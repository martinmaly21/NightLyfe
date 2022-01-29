//
//  ApolloManager.swift
//  NightLyfe
//
//  Created by Martin Maly on 2022-01-29.
//

import Foundation
import Apollo


let apollo = ApolloManager.shared.client

class AuthorizationInterceptor: ApolloInterceptor {
    func interceptAsync<Operation: GraphQLOperation>(
        chain: RequestChain,
        request: HTTPRequest<Operation>,
        response: HTTPResponse<Operation>?,
        completion: @escaping (Result<GraphQLResult<Operation.Data>, Error>) -> Void
    ) {
        //        if let jwt = UserDefaultManager.jwt {
        //            // Set the auth header
        //            request.addHeader(name: "Authorization", value: "Bearer \(jwt)")
        //        }
        
        chain.proceedAsync(request: request, response: response, completion: completion)
    }
}

struct NetworkInterceptorProvider: InterceptorProvider {
    private let store: ApolloStore
    private let client: URLSessionClient
    
    init(
        store: ApolloStore,
        client: URLSessionClient
    ) {
        self.store = store
        self.client = client
    }
    
    func interceptors<Operation: GraphQLOperation>(for operation: Operation) -> [ApolloInterceptor] {
        return [
            MaxRetryInterceptor(maxRetriesAllowed: 2),
            CacheReadInterceptor(store: store),
            AuthorizationInterceptor(),
            NetworkFetchInterceptor(client: client),
            ResponseCodeInterceptor(),
            JSONResponseParsingInterceptor(cacheKeyForObject: store.cacheKeyForObject),
            AutomaticPersistedQueryInterceptor(),
            CacheWriteInterceptor(store: store),
        ]
    }
}

class ApolloManager {
    public static let shared = ApolloManager()
    
    private static var userAgent: String {
        guard let bundleIdentifier = Bundle.main.bundleIdentifier,
              let shortVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String else {
                  preconditionFailure("Missing components to construct a user agent")
              }
        
        return "\(bundleIdentifier)/\(shortVersion)"
    }
    
    private static let timeZone = TimeZone.autoupdatingCurrent
    
    // Use the configured network transport in your client.
    private(set) lazy var client: ApolloClientProtocol = {
        
        // The cache is necessary to set up the store, which we're going to hand to the provider
        let cache = InMemoryNormalizedCache()
        let store = ApolloStore(cache: cache)
        
        store.cacheKeyForObject = { $0["id"] }
        
        let sessionClient = URLSessionClient()
        
        let provider = NetworkInterceptorProvider(
            store: store,
            client: sessionClient
        )
        
        let preferredLanguages = Locale.preferredLanguages
        
        let baseLanguages: [String] = preferredLanguages
            .map({ lang in
                let components = Locale.components(fromIdentifier: lang)
                
                return [
                    components["kCFLocaleLanguageCodeKey"],
                    components["kCFLocaleScriptCodeKey"],
                ]
                    .compactMap({ $0 })
                    .joined(separator: "-")
            })
        
        // include both regionalized and regionless codes. E.g. 'zh-Hant-CA' and 'zh-Hant'; or 'fr-CA' and 'fr'
        // but make sure regionless ones come last
        let acceptLanguageHeaderValue = [preferredLanguages, baseLanguages]
            .flatMap({ $0 })
            .unique
            .joined(separator: ",")
        
        let additionalHeaders: [String: String] = [
            "Time-Zone": ApolloManager.timeZone.identifier,
            "User-Agent": ApolloManager.userAgent,
            "Accept-Language": acceptLanguageHeaderValue,
        ]
        
        let requestChainTransport = RequestChainNetworkTransport(
            interceptorProvider: provider,
            endpointURL: URL(string: "http://lanigansmith.com:8080/query")!,
            additionalHeaders: additionalHeaders
        )
        
        // Remember to give the store you already created to the client so it
        // doesn't create one on its own
        let apolloClient = ApolloClient(
            networkTransport: requestChainTransport,
            store: store
        )
        
        return apolloClient
    }()
}


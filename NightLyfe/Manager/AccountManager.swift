//
//  AccountManager.swift
//  NightLyfe
//
//  Created by Martin Maly on 2022-01-30.
//

import Foundation
import Apollo


class AccountManager {
    static func fetchCurrentUser(id: GraphQLID) async throws -> UserFragment {
        let query = UsersQuery(input: id)
       
        typealias UsersContinuation = CheckedContinuation<UserFragment, Error>
        return try await withCheckedThrowingContinuation { (continuation: UsersContinuation) in
            _ = apollo.fetch(
                query: query,
                cachePolicy: .fetchIgnoringCacheData,
                contextIdentifier: .none,
                queue: .main,
                resultHandler: { result in
                    switch result {
                    case .failure:
                        fatalError()
                    case .success(let suc):
                        if let userFragment = suc.data?.users.fragments.userFragment {
                            
                            continuation.resume(returning: userFragment)
                        } else {
                            //fatalError()
                        }
                    }
                }
            )
        }
    }
}

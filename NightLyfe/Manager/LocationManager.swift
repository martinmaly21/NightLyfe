//
//  LocationManager.swift
//  NightLyfe
//
//  Created by Martin Maly on 2022-01-29.
//

import Foundation
import Apollo


class LocationManager {
    static func fetchLocations() async throws -> [String] {
        let query = LocationsQuery()
        
        typealias FetchLocationsContinuation = CheckedContinuation<[String], Error>
        return try await withCheckedThrowingContinuation { (continuation: FetchLocationsContinuation) in
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
                        if let locations = suc.data?.locations {
                            let names = locations.compactMap {
                                $0?.fragments.locationFragment.name
                            }
                            
                            continuation.resume(returning: names)
                        } else {
                            fatalError()
                        }
                    }
                }
            )
        }
    }
}

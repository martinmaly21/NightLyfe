//
//  LocationManager.swift
//  NightLyfe
//
//  Created by Martin Maly on 2022-01-29.
//

import Foundation
import Apollo


class LocationManager {
    static func fetchLocations() async throws -> [LocationFragment] {
        let query = LocationsQuery()
        
        typealias FetchLocationsContinuation = CheckedContinuation<[LocationFragment], Error>
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
                            let locationFragments = locations.compactMap {
                                $0?.fragments.locationFragment
                            }
                            
                            continuation.resume(returning: locationFragments)
                        } else {
                            fatalError()
                        }
                    }
                }
            )
        }
    }
}

//
//  CreateAccountManager.swift
//  NightLyfe
//
//  Created by Martin Maly on 2022-01-29.
//

import Foundation


class CreateAccountManager {
    static func processPassport(with encodedString: String) async throws -> PassportFragment  {
        let mutation = ProcessPassportMutation(
            input: ParsePassport(
                data: encodedString,
                issuer: .ontario
            )
        )
        
        typealias FetchLocationsContinuation = CheckedContinuation<PassportFragment, Error>
        return try await withCheckedThrowingContinuation { (continuation: FetchLocationsContinuation) in
            let _ = apollo.perform(
                mutation: mutation,
                publishResultToStore: true,
                queue: .main,
                resultHandler: { result in
                    
                    switch result {
                    case .failure:
                        fatalError()
                    case .success(let success):
                        if let passport = success.data?.processPassport.fragments.passportFragment {
                            continuation.resume(returning: passport)
                        }
                    }
                }
            )
        }
    }
}

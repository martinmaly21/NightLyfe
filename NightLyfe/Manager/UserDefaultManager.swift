//
//  UserDefaultManager.swift
//  NightLyfe
//
//  Created by Martin Maly on 2022-01-30.
//

import Foundation
import Apollo


class UserDefaultManager {
    
    let encoder = JSONEncoder()
    let defaults = UserDefaults.standard
    
#warning("In future it's better to retreive this from server every new session")
    private var currentUserID: GraphQLID {
        get {
            if let currentUserID = defaults.object(forKey: "currentUserID") as? Data {
                let decoder = JSONDecoder()
                if let loadedCurrentUserID = try? decoder.decode(GraphQLID.self, from: currentUserID) {
                    return loadedCurrentUserID
                }
                fatalError()
            }
            fatalError()
        }
        
        set {
            if let encoded = try? encoder.encode(newValue) {
                let defaults = UserDefaults.standard
                defaults.set(encoded, forKey: "currentUserID")
            }
        }
    }
    
    private var passportGivenName: String {
        get {
            if let passportGivenName = defaults.object(forKey: "passportGivenName") as? Data {
                let decoder = JSONDecoder()
                if let loadedPassportGivenName = try? decoder.decode(String.self, from: passportGivenName) {
                    return loadedPassportGivenName
                }
                fatalError()
            }
            fatalError()
        }
        
        set {
            if let encoded = try? encoder.encode(newValue) {
                defaults.set(encoded, forKey: "passportGivenName")
            }
        }
    }
}

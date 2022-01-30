//
//  UserDefaultManager.swift
//  NightLyfe
//
//  Created by Martin Maly on 2022-01-30.
//

import Foundation
import Apollo

class UserDefaultManager {
    static let encoder = JSONEncoder()
    static let defaults = UserDefaults.standard
    
    static var currentUser: UserFragment?
    
#warning("In future it's better to retreive this from server every new session")
    static var currentUserID: GraphQLID? {
        get {
            if let currentUserID = defaults.object(forKey: "currentUserID") as? Data {
                let decoder = JSONDecoder()
                if let loadedCurrentUserID = try? decoder.decode(GraphQLID.self, from: currentUserID) {
                    return loadedCurrentUserID
                }
                return nil
            }
            return nil
        }
        
        set {
            if let encoded = try? encoder.encode(newValue) {
                let defaults = UserDefaults.standard
                defaults.set(encoded, forKey: "currentUserID")
            }
        }
    }
    
    static var isFullyVaccinated: Bool {
        get {
            if let isVaccinated = defaults.object(forKey: "isVaccinated") as? Data {
                let decoder = JSONDecoder()
                if let loadedFullyVaccinated = try? decoder.decode(Bool.self, from: isVaccinated) {
                    return loadedFullyVaccinated
                }
                fatalError()
            }
            fatalError()
        }
        
        set {
            if let encoded = try? encoder.encode(newValue) {
                defaults.set(encoded, forKey: "isVaccinated")
            }
        }
    }
}

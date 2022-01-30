//
//  IdentityManager.swift
//  NightLyfe
//
//  Created by Martin Maly on 2022-01-29.
//

import Foundation

class IdentityManager {
    
    static func isVaccinationInformationCorrect(passportFragment: PassportFragment, scannedID: ScannedID?) -> Bool {
        let vaccineFullName = (passportFragment.givenname.uppercased() + passportFragment.lastname.uppercased())
            .replacingOccurrences(of: " ", with: "")
            .replacingOccurrences(of: ",", with: "")
            .replacingOccurrences(of: ".", with: "")
        
        let idFullName = ((scannedID?.firstName.uppercased() ?? "") + (scannedID?.lastName.uppercased() ?? ""))
            .replacingOccurrences(of: " ", with: "")
            .replacingOccurrences(of: ",", with: "")
            .replacingOccurrences(of: ".", with: "")
        
        guard vaccineFullName == idFullName else {
            return false
        }
        
        //TODO: in future, compare birthday as well
        
        return true
    }
}

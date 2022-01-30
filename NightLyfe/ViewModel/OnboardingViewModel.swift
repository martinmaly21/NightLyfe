//
//  OnboardingViewModel.swift
//  NightLyfe
//
//  Created by Martin Maly on 2022-01-29.
//

import Foundation

class OnboardingViewModel: ObservableObject {
    @Published var scannedID: ScannedID?
    
#warning("Should this be moved to server?")
    func isVaccinationInformationCorrect(passportFragment: PassportFragment) -> Bool {
        let vaccineFullName = (passportFragment.firstname.uppercased() + passportFragment.lastname.uppercased())
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
        
        
        return true
    }
}

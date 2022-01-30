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
        return IdentityManager.isVaccinationInformationCorrect(passportFragment: passportFragment, scannedID: scannedID)
    }
}

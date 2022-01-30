//
//  MainAppViewModel.swift
//  NightLyfe
//
//  Created by Martin Maly on 2022-01-30.
//

import Foundation

class MainAppViewModel: ObservableObject {
    @Published var currentUser: UserFragment?
    
    init(currentUser: UserFragment? = nil) {
        self.currentUser = currentUser
    }
}

//
//  NightLyfeApp.swift
//  NightLyfe
//
//  Created by Martin Maly on 2022-01-29.
//

import SwiftUI
import Microblink

@main
struct NightLyfeApp: App {
    
    init() {
        //Use this if NavigationBarTitle is with Large Font
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        //Use this if NavigationBarTitle is with displayMode = .inline
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
        
        MBMicroblinkSDK.shared().setLicenseResource(
            "license",
            withExtension: "key",
            inSubdirectory: "",
            for: Bundle.main,
            errorCallback: { error in
                fatalError()
            }
        )
    }
    
    var body: some Scene {
        WindowGroup {
            EntryView()
        }
    }
}

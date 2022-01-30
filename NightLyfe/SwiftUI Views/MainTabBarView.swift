//
//  MainTabBarView.swift
//  NightLyfe
//
//  Created by Martin Maly on 2022-01-30.
//

import SwiftUI

struct MainTabBarView: View {
    @EnvironmentObject var mainAppViewModel: MainAppViewModel
    
    var body: some View {
        TabView {
            LocationView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            .navigationBarBackButtonHidden(true)
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                }
            
            .navigationBarBackButtonHidden(true)
        }
    }
}

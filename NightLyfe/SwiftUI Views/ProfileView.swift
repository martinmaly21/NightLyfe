//
//  ProfileView.swift
//  NightLyfe
//
//  Created by Martin Maly on 2022-01-30.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var mainAppViewModel: MainAppViewModel
    
    var body: some View {
        NavigationView {
            AppBackground {
                ScrollView {
                    Text("Name: " + (mainAppViewModel.currentUser?.givenname ?? ""))
                        .foregroundColor(.white)
                        .font(.title)
                }
//                .padding()
            }
            .navigationTitle("My profile")
            .navigationViewStyle(.stack)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

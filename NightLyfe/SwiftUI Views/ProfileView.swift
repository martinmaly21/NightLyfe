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
                    Text(mainAppViewModel.currentUser?.givenname ?? "")
                    Text("dklfsk;d")
                    Text("dklfsk;d")
                    Text("dklfsk;d")
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

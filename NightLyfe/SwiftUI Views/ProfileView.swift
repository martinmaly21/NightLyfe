//
//  ProfileView.swift
//  NightLyfe
//
//  Created by Martin Maly on 2022-01-30.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            AppBackground {
                ScrollView {
                    Text("dklfsk;d")
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

//
//  WelcomeToNightLyfeView.swift
//  NightLyfe
//
//  Created by Martin Maly on 2022-01-29.
//

import SwiftUI

struct WelcomeToNightLyfeView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var shouldShowLocationView = false
    
    var body: some View {
        AppBackground {
            Text("Welcome to NightLyfe!")
                .foregroundColor(.white)
            
            Button(
                action: {
                    shouldShowLocationView = true
                },
                label: {
                    Text("Begin")
                }
            )
        }
        .fullScreenCover(
            isPresented: $shouldShowLocationView,
            content: {
                LocationView()
            }
        )
        .navigationBarBackButtonHidden(true)
    }
}

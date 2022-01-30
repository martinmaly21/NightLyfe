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
            VStack(spacing: 20) {
                VStack(spacing: 10) {
                    Text("Welcome to NightLyfe!")
                        .font(.title)
                        .foregroundColor(.white)
                    
                    Text("NightLyfe is the new hottest way to stay safe and have fun during a night on the town")
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                }
                .padding([.leading, .trailing], 16.5)
                
                EmptyView()
                    .frame(height: 150)
                
                Button(
                    action: {
                        shouldShowLocationView = true
                    },
                    label: {
                        Text("Begin")
                            .font(.title)
                    }
                )
            }
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

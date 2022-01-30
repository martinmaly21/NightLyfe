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
                    Spacer()
                        .frame(height: 60)
                    
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
                
                Spacer()
                
                Button(action: {
                    shouldShowLocationView = true
                }) {
                    Text("Let's go")
                        .foregroundColor(.black)
                        .font(.title)
                        .padding()
                }
                .frame(width: 180)
                .background(RoundedRectangle(cornerRadius: 15, style: .continuous))
                
                
                Spacer()
                    .frame(height: 240)
            }
        }
        .fullScreenCover(
            isPresented: $shouldShowLocationView,
            content: {
                MainTabBarView()
            }
        )
        .navigationBarBackButtonHidden(true)
    }
}

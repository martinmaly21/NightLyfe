//
//  EntryView.swift
//  NightLyfe
//
//  Created by Martin Maly on 2022-01-29.
//

import SwiftUI

struct EntryView: View {
    @State private var shouldNavigateToLogIn = false
    @State private var shouldNavigateToSignUp = false
    
    let gradient = LinearGradient(gradient: Gradient(colors: [Color.white, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
    
    var body: some View {
        NavigationView {
            AppBackground {
                Image(uiImage: UIImage(named: "NightLyfeLogoWhiteText")!)
                    .resizable()
                    .frame(width: 364, height: 240)
                    .font(.title)
                    .padding()
                    .offset(x: 0, y: -170)
                
                Spacer()
                    .frame(height: 30)
                
                VStack(spacing: 12) {
                    Button(action: {
                        self.shouldNavigateToSignUp = true
                    }
                    ) {
                        Text("Sign up")
                            .frame(width: 215, height: 44)
                            .foregroundColor(.white)
                            .font(.headline)
                    }
                    .background(Capsule()
                        .stroke(gradient, lineWidth: 2)
                        .saturation(1.8))
                    
                    
                    Button(action: {
                        self.shouldNavigateToLogIn = true
                        
                    }) {
                        Text("Log in")
                            .frame(width: 215, height: 44)
                            .foregroundColor(.white)
                            .font(.headline)
                    }
                    .background(Capsule()
                        .stroke(gradient, lineWidth: 2)
                        .saturation(1.8))
                }
                
                NavigationLink(
                    isActive: $shouldNavigateToSignUp,
                    destination: {
                        IDScannerView()
                    },
                    label: {
                        EmptyView()
                    }
                )
            }
            .fullScreenCover(
                isPresented: $shouldNavigateToLogIn,
                content: {
                    MainTabBarView()
                }
            )
            
        }
        .accentColor(.white)
    }
}

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
    
    var body: some View {
        NavigationView {
            OnboardingBackground {
                Image(uiImage: UIImage(named: "NightLyfeLogoWhiteText")!)
                    .resizable()
                    .frame(width: 250, height: 180)
                    .font(.title)
                    .padding()
                    .offset(x: 0, y: -125)
                
                VStack(spacing: 12) {
                    Button(
                        action: {
                            self.shouldNavigateToSignUp = true
                        },
                        label: {
                            Text("Sign up")
                                .foregroundColor(.white)
                                .font(.headline)
                        }
                    )
                    
                    Button(
                        action: {
                            self.shouldNavigateToLogIn = true
                        },
                        label: {
                            Text("Log in")
                                .foregroundColor(.white)
                                .font(.headline)
                        }
                    )
                }
                
                NavigationLink(
                    isActive: $shouldNavigateToSignUp,
                    destination: {
                        QRVaccineScannerView()
                    },
                    label: {
                        EmptyView()
                    }
                )
                
                NavigationLink(
                    isActive: $shouldNavigateToLogIn,
                    destination: {
                        LocationView()
                    },
                    label: {
                        EmptyView()
                    }
                )
            }
        }
    }
}

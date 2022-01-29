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
            ZStack {
                VStack {
                    Spacer()
                    
                    Image(uiImage: UIImage(named: "newyorkskyline")!)
                        .resizable()
                        .renderingMode(.template)
                        .foregroundColor(.white)
                        .opacity(0.07)
                        .frame(width: 700, height: 325)
                        .font(.title)
                }
                
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
            .edgesIgnoringSafeArea(.all)
            .frame(maxWidth: .infinity,  maxHeight: .infinity)
            .background(
                LinearGradient(gradient: Gradient(colors: Color.gradient), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
            )
        }
        
    }
}

struct EntryView_Previews: PreviewProvider {
    static var previews: some View {
        EntryView()
    }
}

extension Color {
    static var gradient: Array<Color> {
        return [
            Color(red: 1/255, green: 120/255, blue: 200/255, opacity: 1.0),
            Color(red: 0/255, green: 0/255, blue: 0/255, opacity: 1.0)
        ]
    }
}

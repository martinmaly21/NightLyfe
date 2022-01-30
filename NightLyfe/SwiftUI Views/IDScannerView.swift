//
//  IDScannerView.swift
//  NightLyfe
//
//  Created by Martin Maly on 2022-01-29.
//

import SwiftUI
import Microblink

struct IDScannerView: View {
    @State private var isShowingScanner = false
    @State private var shouldNavigate = false
    @State private var scannedIDResult: ScannedID?
    
    var body: some View {
        AppBackground {
            VStack {
                Spacer()
                    .frame(height: 130)
                   
                VStack(spacing: 16) {
                    
                    Image(systemName: "creditcard")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundColor(.white)
                        .frame(width: 200, height: 160)
                        .offset(x: 0, y: -40)
                    
                    Button(action: {
                        isShowingScanner = true
                    }) {
                        Text("Tap to scan your ID")
                            .font(.headline)
                            .padding()
                    }
                    .background(
                        RoundedRectangle(
                            cornerRadius: 15
                        )
                            .opacity(0.2)
                    )
                    .sheet(isPresented: $isShowingScanner) {
                        IDScanViewController(shouldNavigate: $shouldNavigate, scannedIDResult: $scannedIDResult)
                    }
                    
                    Text("Your identification card must match your immunization records scanned on the previous page.")
                        .font(.subheadline)
                        .foregroundColor(.white)
                }
                
                Spacer()
                
                NavigationLink(
                    isActive: $shouldNavigate,
                    destination: {
                        if let scannedIDResult = scannedIDResult {
                            IDSummaryView(scannedIDResult: scannedIDResult)
                        }
                    },
                    label: {
                        EmptyView()
                    }
                )
            }
            .padding([.leading, .trailing], 16.5)
        }
        .navigationTitle("Upload ID")
    }
}

//
//  QRVaccineScannerView.swift
//  NightLyfe
//
//  Created by Martin Maly on 2022-01-29.
//

import SwiftUI
import CodeScanner

struct QRVaccineScannerView: View {
    @State private var isShowingScanner = false
    @State private var qrCodeInfo: String?
    
    var body: some View {
        AppBackground {
            VStack {
                Spacer()
                    .frame(height: 130)
                   
                VStack(spacing: 16) {
                    Button(action: {
                        isShowingScanner = true
                    }) {
                        Text("Tap to scan your QR Code")
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
                        CodeScannerView(codeTypes: [.qr], completion: handleScan)
                    }
                    
                    Text("Providing this peice of information will provide you with a seamless entry experience on your nights out.")
                        .font(.subheadline)
                        .foregroundColor(.white)
                }
                
                Spacer()
            }
            .padding([.leading, .trailing], 16.5)
        }
        .navigationTitle("Upload Vaccine")
    }
    
    func handleScan(result: Result<ScanResult, ScanError>) {
       isShowingScanner = false
        
        switch result {
        case .success(let result):
            qrCodeInfo = result.string
        default:
            fatalError()
        }
    }
}
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
        VStack {
            Button(
                action: {
                    isShowingScanner = true
                },
                label: {
                    Text("Tap to scan your QR Code")
                }
            )
                .sheet(isPresented: $isShowingScanner) {
                    CodeScannerView(codeTypes: [.qr], completion: handleScan)
                }
            
            if let qrCodeInfo = qrCodeInfo {
                Text(qrCodeInfo)
            }
        }
        
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

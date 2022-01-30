//
//  BluetoothConnectView.swift
//  NightLyfe
//
//  Created by Martin Maly on 2022-01-30.
//

import SwiftUI

struct BluetoothConnectView: View {
    var body: some View {
        NavigationView {
            AppBackground {
                VStack(spacing: 65) {
                    Image(systemName: "appclip")
                        .resizable()
                        .frame(width: 160, height: 160)
                        .foregroundColor(.white)
                    
                    
                    HStack {
                        ProgressView()
                            .progressViewStyle(.circular)
                        
                        Text("Searching...")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    
                    
                    Text("Please place your phone next to the bouncer's remote to check in. Make sure you have bluetooth enabled.")
                        .font(.title2)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                }
            }
            .navigationTitle("Contactless check-in")
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct BluetoothConnectView_Previews: PreviewProvider {
    static var previews: some View {
        BluetoothConnectView()
    }
}

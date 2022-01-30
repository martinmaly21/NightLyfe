//
//  COVIDCheckInSheet.swift
//  NightLyfe
//
//  Created by Martin Maly on 2022-01-30.
//

import SwiftUI

struct COVIDCheckInSheet: View {
    let location: LocationFragment
    
    @State private var showingBluetoothConnectionScreen = false
    
    var body: some View {
        NavigationView {
            AppBackground {
                VStack(spacing: 60) {
                    Text("By continuing I confirm that I do not have any covid symptoms.")
                        .font(.title)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    Button("       Continue       ") {
                        showingBluetoothConnectionScreen = true
                    }
                    .buttonStyle(GrowingButton())
                }
                .offset(x: 0, y: -20)
                
                NavigationLink(
                    isActive: $showingBluetoothConnectionScreen,
                    destination: {
                        BluetoothConnectView()
                    },
                    label: {
                        EmptyView()
                    }
                )
            }
            .navigationBarTitle("Check in: \(location.name)")
        }
    }
}

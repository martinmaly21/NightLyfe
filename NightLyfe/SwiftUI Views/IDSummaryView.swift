//
//  IDSummaryView.swift
//  NightLyfe
//
//  Created by Martin Maly on 2022-01-29.
//

import SwiftUI

struct IDSummaryView: View {
    @State private var shouldNavigate = false
    
    var id: ScannedID
    
    var body: some View {
        AppBackground {
            VStack {
                VStack {
                    Image(uiImage: id.photo!)
                        .clipShape(Circle())
                        .shadow(radius: 10)
                    
                    
                    Text(id.name)
                        .font(.title2)
                        .foregroundColor(.black)
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 18, style: .continuous)
                        .fill(Color.white)
                )
                
                Spacer()
            }
        }
        .navigationTitle("Account Summary")
    }
}

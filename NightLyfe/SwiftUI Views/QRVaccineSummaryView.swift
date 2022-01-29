//
//  QRVaccineSummaryView.swift
//  NightLyfe
//
//  Created by Martin Maly on 2022-01-29.
//

import SwiftUI

struct QRVaccineSummaryView: View {
    var passport: PassportFragment
    
    var body: some View {
        AppBackground {
            VStack {
                HStack {
                    Text("First name:")
                        .font(.subheadline)
                        .foregroundColor(.white)
                    
                    Text(passport.firstname)
                        .font(.body)
                        .foregroundColor(.white)
                }
                
                HStack {
                    Text("Last name:")
                        .font(.subheadline)
                        .foregroundColor(.white)
                    
                    Text(passport.lastname)
                        .font(.body)
                        .foregroundColor(.white)
                }
                
                Spacer()
            }
        }
        .navigationTitle("Vaccine Summary")
    }
}

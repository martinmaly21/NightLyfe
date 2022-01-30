//
//  IDSummaryView.swift
//  NightLyfe
//
//  Created by Martin Maly on 2022-01-29.
//

import SwiftUI
import Microblink

struct IDSummaryView: View {
    @State private var shouldNavigate = false
    
    var scannedIDResult: ScannedID
    
    private var dateFormatter: DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        return dateFormatter
    }
    
    var body: some View {
        AppBackground {
            VStack {
                VStack {
                    Image(uiImage: scannedIDResult.photo)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 120)
                        .shadow(radius: 10)
                    
                    
                    VStack {
                        Spacer()
                            .frame(height: 5)
                        
                        Text(scannedIDResult.firstName + scannedIDResult.lastName)
                            .font(.title2)
                            .foregroundColor(.black)
                        
                        Spacer()
                            .frame(height: 10)
                        
                        HStack {
                            Text("Age:")
                                .font(.title2)
                                .foregroundColor(.black)
                                .bold()
                            
                            Text("\(scannedIDResult.age)")
                                .font(.title2)
                                .foregroundColor(.black)
                            
                            Spacer()
                        }
                        
                        HStack {
                            Text("Address:")
                                .font(.title2)
                                .foregroundColor(.black)
                                .bold()
                            
                            Text("\(scannedIDResult.address)")
                                .font(.title2)
                                .foregroundColor(.black)
                            
                            Spacer()
                        }
                        
                        HStack {
                            Text("Date of birth:")
                                .font(.title2)
                                .foregroundColor(.black)
                                .bold()
                            
                            Text("\(dateFormatter.string(from: scannedIDResult.birthday))")
                                .font(.title2)
                                .foregroundColor(.black)
                            
                            Spacer()
                        }
                        
                        HStack {
                            Text("License expires:")
                                .font(.title2)
                                .foregroundColor(.black)
                                .bold()
                            
                            Text("\(dateFormatter.string(from: scannedIDResult.expirationDate))")
                                .font(.title2)
                                .foregroundColor(.black)
                            
                            Spacer()
                        }
                    }
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

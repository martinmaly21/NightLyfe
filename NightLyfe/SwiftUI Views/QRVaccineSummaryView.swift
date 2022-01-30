//
//  QRVaccineSummaryView.swift
//  NightLyfe
//
//  Created by Martin Maly on 2022-01-29.
//

import SwiftUI

struct QRVaccineSummaryView: View {
    @EnvironmentObject var onboardingViewModel: OnboardingViewModel
    
    @State private var shouldNavigate = false
    @State private var isShowingErrorAlert = false
    
    var passport: PassportFragment
    
    var body: some View {
        AppBackground {
            VStack(alignment: .leading) {
                VStack(alignment: .leading, spacing: 20) {
                    VStack(spacing: 5) {
                        HStack(alignment: .bottom) {
                            Text("First name:")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.black)
                            
                            Text(passport.givenname)
                                .font(.title2)
                                .foregroundColor(.black)
                            
                            Spacer()
                        }
                        
                        HStack(alignment: .bottom) {
                            Text("Last name:")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.black)
                            
                            Text(passport.lastname)
                                .font(.title2)
                                .foregroundColor(.black)
                            
                            Spacer()
                        }
                        
                        HStack(alignment: .bottom) {
                            Text("Birthday:")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.black)
                            
                            Text(passport.dateofbirth)
                                .font(.title2)
                                .foregroundColor(.black)
                            
                            Spacer()
                        }
                    }
                    
                    VStack(spacing: 5) {
                        HStack(alignment: .bottom) {
                            Text("First vaccine date:")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.black)
                            
                            Text(passport.firstDate)
                                .font(.title2)
                                .foregroundColor(.black)
                            
                            Spacer()
                        }
                        
                        HStack(alignment: .bottom) {
                            Text("First vaccine brand:")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.black)
                            
                            Text(passport.firstBrand)
                                .font(.title2)
                                .foregroundColor(.black)
                            
                            Spacer()
                        }
                    }
                    
                    VStack(spacing: 5) {
                        HStack(alignment: .bottom) {
                            Text("Second vaccine date:")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.black)
                            
                            Text(passport.secondDate)
                                .font(.title2)
                                .foregroundColor(.black)
                            
                            Spacer()
                        }
                        
                        HStack(alignment: .bottom) {
                            Text("Second vaccine brand:")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.black)
                            
                            Text(passport.secondBrand)
                                .font(.title2)
                                .foregroundColor(.black)
                            
                            Spacer()
                        }
                    }
                    
                    VStack(spacing: 5) {
                        HStack(alignment: .bottom) {
                            Text("Booster vaccine date:")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.black)
                            
                            Text(passport.boosterDate.isEmpty ? "N/A" : passport.boosterDate)
                                .font(.title2)
                                .foregroundColor(.black)
                            
                            Spacer()
                        }
                        
                        HStack(alignment: .bottom) {
                            Text("Booster vaccine brand:")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.black)
                            
                            Text(passport.boosterBrand.isEmpty ? "N/A" : passport.boosterBrand)
                                .font(.title2)
                                .foregroundColor(.black)
                            
                            Spacer()
                        }
                    }
                    
                    NavigationLink(
                        isActive: $shouldNavigate,
                        destination: {
                            WelcomeToNightLyfeView()
                        },
                        label: {
                            EmptyView()
                        }
                    )
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 18, style: .continuous)
                        .fill(Color.white)
                )
                
                Spacer()
            }
            .alert("Oops. ID does not match vaccine", isPresented: $isShowingErrorAlert) {
                Button("Try again", role: .cancel) {
                    NavigationUtil.popToRootView()
                }
            }
            .navigationBarItems(
                trailing:
                    Button(action: {
                        if onboardingViewModel.isVaccinationInformationCorrect(passportFragment: passport) {
                            //TODO: Create account!
                            shouldNavigate = true
                        } else {
                            isShowingErrorAlert = true
                        }
                    }) {
                        Text("Next")
                    }
            )
        }
        .navigationTitle("Vaccine Summary")
    }
}

//
//  OnboardingBackground.swift
//  NightLyfe
//
//  Created by Martin Maly on 2022-01-29.
//

import SwiftUI

struct OnboardingBackground<Content: View>: View {
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        ZStack {
            content
            
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
        }
        .edgesIgnoringSafeArea(.all)
        .frame(maxWidth: .infinity,  maxHeight: .infinity)
        .background(
            LinearGradient(gradient: Gradient(colors: Color.gradient), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
        )
    }
}

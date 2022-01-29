//
//  AppBackground.swift
//  NightLyfe
//
//  Created by Martin Maly on 2022-01-29.
//

import SwiftUI

struct AppBackground<Content: View>: View {
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        ZStack {
            GeometryReader { geometry in
            content
                    .frame(width: geometry.size.width, height: geometry.size.height)
            
            VStack {
                Spacer()
                
                Image(uiImage: UIImage(named: "newyorkskyline")!)
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(.white)
                    .opacity(0.07)
                    .frame(width: 700, height: 325)
                    .offset(x: -100, y: 0)
                    .font(.title)
            }
            }
        }
        .edgesIgnoringSafeArea(.bottom)
        .background(
            LinearGradient(gradient: Gradient(colors: Color.gradient), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
        )
    }
}

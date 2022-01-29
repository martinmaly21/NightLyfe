//
//  ContentView.swift
//  NightLyfe
//
//  Created by Martin Maly on 2022-01-29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Text("NightLyfe")
                .foregroundColor(.white)
                .font(.title) 
                
                .padding()
                
        }
        .frame(maxWidth: .infinity,  maxHeight: .infinity)
        .background(
              LinearGradient(gradient: Gradient(colors: Color.gradient), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
extension Color {
  static var gradient: Array<Color> {
    return [
      Color(red: 1/255, green: 120/255, blue: 200/255, opacity: 1.0),
      Color(red: 0/255, green: 0/255, blue: 0/255, opacity: 1.0),
//      Color(red: 100/255, green: 100/255, blue: 98/255, opacity: 0.5),
//      Color(red: 90/255, green: 120/255, blue: 100/255, opacity: 0.2),
//      Color(red: 50/255, green: 150/255, blue: 100/255, opacity: 1.0)
    ]
  }
}

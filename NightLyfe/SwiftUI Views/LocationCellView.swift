//
//  LocationCellView.swift
//  NightLyfe
//
//  Created by Martin Maly on 2022-01-29.
//

import SwiftUI

struct LocationCellView: View {
    let locationFagment: LocationFragment
    
    var body: some View {
        ZStack {
            //RoundedRectangle(cornerRadius: 20, style: .continuous)
            Text(locationFagment.name)
                .fontWeight(.bold)
                .font(.title)
                .zIndex(1)
            Image("Tavern")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .opacity(0.9)
                .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
           
                    //.opacity(0.3)
                      //.foregroundColor(.blue)
                      //.padding()
            
                           //RoundedRectangle(cornerRadius: 20, style: .continuous)
                            //.background(Color.red)  // init(red: 255, green: 245, blue: 158)
                                //.stroke(Color.purple, lineWidth: 4)
                                    //.background(Color.white)
                                    .opacity(0.3)
            
            
                
            
          /* Text(locationFagment.name)
                .fontWeight(.bold)
                      .font(.title)
                      .foregroundColor(.purple)
                      .padding()
                      .overlay(
                          RoundedRectangle(cornerRadius: 20)
                              .stroke(Color.purple, lineWidth: 5))*/
        }
        //.aspectRatio(1, contentMode: .fill)
        .frame (width: 200, height: 200)
        .padding( .all, 30)
    }
    
   
}

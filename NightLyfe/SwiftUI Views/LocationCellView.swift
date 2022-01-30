//
//  LocationCellView.swift
//  NightLyfe
//
//  Created by Martin Maly on 2022-01-29.
//

import SwiftUI

struct LocationCellView: View {
    let locationFragment: LocationFragment
    
    private var busyColor: Color {
        let capacity = Double(locationFragment.currentcapacity ?? 0 / locationFragment.maxcapacity)
        
        switch capacity {
        case let x where x < 0.35:
               return .green
        case let x where x < 0.75:
               return .yellow
        default:
            return .red
        }
        
    }

    var body: some View {
        ZStack {
            RoundedRectangle(
                cornerRadius: 6, style: .continuous
            )
                .fill(Color.white)
            
            RoundedRectangle(
                cornerRadius: 6, style: .continuous
            )
                .strokeBorder(Color.gray, lineWidth: 0.5)
            
            AsyncImage(url: URL(string: locationFragment.photoUrl))
                .clipShape(
                    RoundedRectangle(
                        cornerRadius: 5, style: .continuous
                    )
                )
                .brightness(-0.1)
            
            VStack(alignment: .leading) {
                Spacer()
                
                Text(locationFragment.name)
                    .foregroundColor(.white)
                    .font(.title2)
            }
            
            VStack(alignment: .trailing) {
                Text("\(locationFragment.currentcapacity!)" + "/"  + "\(locationFragment.maxcapacity)")
                    .foregroundColor(busyColor)
                    .font(.body)
                    
                
                Spacer()
            }
           
        }
        //.aspectRatio(1, contentMode: .fill)
        .frame (width: 150, height: 220)
    }
}

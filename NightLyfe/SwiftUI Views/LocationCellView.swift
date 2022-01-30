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
            RoundedRectangle(cornerRadius: 5, style: .continuous)
                .strokeBorder(Color.gray, lineWidth: 0.5)
            
            Text(locationFagment.name)
        }
        //.aspectRatio(1, contentMode: .fill)
        .frame (width: 150, height: 220)
    }
}

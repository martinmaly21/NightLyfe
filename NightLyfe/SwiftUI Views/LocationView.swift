//
//  LocationView.swift
//  NightLyfe
//
//  Created by Martin Maly on 2022-01-29.
//

import SwiftUI

struct LocationView: View {
    @State var isFetching = false
    @State var locations: [String] = []
    
    let columns = [
        //change minimum to screensize / 3
        GridItem(.flexible(minimum: 120, maximum: .infinity)),
        GridItem(.flexible(minimum: 120, maximum: .infinity)),
        GridItem(.flexible(minimum: 120, maximum: .infinity)),
    ]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            if isFetching {
                ProgressView()
                    .progressViewStyle(.circular)
            } else {
                ForEach(locations, id: \.self) { location in
                    Text(location)
                }
            }
        }
        .task {
            self.isFetching = true
            self.locations = try! await LocationManager.fetchLocations()
            self.isFetching = false
        }
    }
    
}

//
//  LocationView.swift
//  NightLyfe
//
//  Created by Martin Maly on 2022-01-29.
//

import SwiftUI

struct LocationView: View {
    @State var isFetching = false
    @State var locations: [LocationFragment] = []
    
    let columns = [
        //change minimum to screensize / 3
        GridItem(.flexible(minimum: 120, maximum: .infinity)),
        GridItem(.flexible(minimum: 120, maximum: .infinity)),
        GridItem(.flexible(minimum: 120, maximum: .infinity)),
    ]
    
    var body: some View {
        AppBackground {
            VStack {
                LazyVGrid(columns: columns) {
                    if isFetching {
                        ProgressView()
                            .progressViewStyle(.circular)
                    } else {
                        ForEach(0..<locations.count, id: \.self) { index in
                            LocationCellView(locationFagment: locations[index])
                        }
                    }
                }
                .padding()
                
                Spacer()
            }
        }
        .navigationTitle("Locations")
        .onAppear {
            Task {
                self.isFetching = true
                self.locations = try! await LocationManager.fetchLocations()
                self.isFetching = false
            }
        }
    }
    
}

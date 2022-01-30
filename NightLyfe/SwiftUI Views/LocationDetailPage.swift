//
//  LocationDetailPage.swift
//  NightLyfe
//
//  Created by Martin Maly on 2022-01-30.
//

import SwiftUI
import MapKit

struct LocationDetailPage: View {
    let location: LocationFragment
    
    @State private var shouldShowScreeningScreen = false
    
    @State private var region: MKCoordinateRegion
    
    init (location: LocationFragment) {
        self.location = location
        
        region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(
                latitude: location.lat,
                longitude: location.long
            ),
            latitudinalMeters: 300,
            longitudinalMeters: 300
        )
    }
    
    var body: some View {
        AppBackground {
            GeometryReader { reader in
                ScrollView {
                    VStack(spacing: 30) {
                        AsyncImage(url: URL(string: location.photoUrl))
                            .frame(width: reader.size.width, height:  reader.size.width)
                        
                        HStack(alignment: .bottom) {
                            Text(location.name + ": ")
                                .foregroundColor(.white)
                                .font(.title)
                            
                            Text(location.type.rawValue.lowercased().capitalizingFirstLetter())
                                .foregroundColor(.white)
                                .font(.title2)
                            
                            Spacer()
                        }
                        
                        HStack(alignment: .bottom) {
                            Text("Capacity: ")
                                .foregroundColor(.white)
                                .font(.title)
                            
                            Text("\(String(describing: location.currentcapacity))" + "/"  + "\(location.maxcapacity)")
                                .foregroundColor( (Double(location.currentcapacity ?? 0 / location.maxcapacity) < 0.75) ? Color.green : Color.red)
                                .font(.title2)
                            
                            Spacer()
                        }
                        
                        Text(location.description)
                            .foregroundColor(.white)
                            .font(.body)
                        
                        
                        
                        Map(coordinateRegion: $region)
                        
                        
                        Button("Check in now") {
                            shouldShowScreeningScreen = true
                        }
                        .buttonStyle(GrowingButton())
                        
                    }
                }
            }
            .sheet(isPresented: $shouldShowScreeningScreen) {
                COVIDCheckInSheet(location: location)
            }
        }
    }
}

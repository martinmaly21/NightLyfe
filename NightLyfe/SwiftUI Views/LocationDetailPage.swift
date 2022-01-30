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
    
    private var busyColor: Color {
        let capacity = Double(location.currentcapacity ?? 0 / location.maxcapacity)
        
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
        AppBackground {
            GeometryReader { reader in
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 30) {
                        AsyncImage(url: URL(string: location.photoUrl))
                            .frame(width: reader.size.width, height:  reader.size.width)
                        
                        HStack(alignment: .top) {
                            VStack(spacing: 8) {
                                HStack {
                                    Text("Type/style: ")
                                        .foregroundColor(.white)
                                        .font(.headline)
                                        .font(.title)
                                    
                                    Text(location.type.rawValue.lowercased().capitalizingFirstLetter())
                                        .foregroundColor(.white)
                                        .font(.title3)
                                    
                                    Spacer()
                                }
                                
                                HStack {
                                    Text("Current capacity: ")
                                        .foregroundColor(.white)
                                        .font(.headline)
                                        .multilineTextAlignment(.leading)
                                    
                                    Text("\(location.currentcapacity!)" + "/"  + "\(location.maxcapacity)")
                                        .foregroundColor(busyColor)
                                        .font(.title3)
                                    
                                    Spacer()
                                }
                                
                                if let minage = location.minage {
                                    HStack {
                                        Text("Minimum age: ")
                                            .foregroundColor(.white)
                                            .font(.headline)
                                            .multilineTextAlignment(.leading)
                                        
                                        Text("\(minage)+")
                                            .foregroundColor(.white)
                                            .font(.title3)
                                        
                                        Spacer()
                                    }
                                }
                                
                                HStack {
                                    Text("Vaccine required? ")
                                        .foregroundColor(.white)
                                        .font(.headline)
                                        .multilineTextAlignment(.leading)
                                    
                                    Image(systemName: location.mustScreen ? "checkmark.circle" : "x.circle")
                                        .foregroundColor(location.mustScreen ? .green : .red)
                                        .font(.title3)
                                    
                                    Spacer()
                                }
                            }
                            
                            Spacer()
                            
                            Map(coordinateRegion: $region)
                                .frame(width: 100, height: 100)
                                .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                        }
                        
                        VStack(alignment: .leading, spacing: 6) {
                            HStack {
                                Text("Description:")
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .multilineTextAlignment(.leading)
                                
                                Spacer()
                            }
                            
                            Text(location.description)
                                .foregroundColor(.white)
                                .font(.body)
                                .multilineTextAlignment(.leading)
                        }
                        
                        Button("       Check in now       ") {
                            shouldShowScreeningScreen = true
                        }
                        .frame(width: 220, height: 45, alignment: .center)
                        .buttonStyle(GrowingButton())
                    }
                    
                    Spacer()
                        .frame(height: 140)
                }
                .navigationBarTitle(location.name)
            }
            .sheet(isPresented: $shouldShowScreeningScreen) {
                COVIDCheckInSheet(location: location)
            }
        }
    }
}

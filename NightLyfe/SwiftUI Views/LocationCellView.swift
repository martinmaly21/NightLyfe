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
                cornerRadius: 10, style: .continuous
            )
                .fill(Color.gray)
            
            RoundedRectangle(
                cornerRadius: 10, style: .continuous
            )
                .strokeBorder(Color.gray, lineWidth: 0.5)
            
            let urlstring = locationFragment.photoUrl
                
                AsyncImage(url: URL(string: urlstring)!) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                    case .success(let image):
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: 300, maxHeight: 100)
                    case .failure:
                        Image(systemName: "photo")
                    @unknown default:
                        // Since the AsyncImagePhase enum isn't frozen,
                        // we need to add this currently unused fallback
                        // to handle any new cases that might be added
                        // in the future:
                        EmptyView()
                    }
                }
                
                //                .clipShape(
                //                    RoundedRectangle(
                //                        cornerRadius: 5, style: .continuous
                //                    )
                //                )
                //                .brightness(-0.1)
            
            VStack(alignment: .leading) {
                Spacer()
                
                Text(locationFragment.name)
                    .foregroundColor(.black)
                    .font(.title2)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 4)
            }
            
            VStack(alignment: .trailing) {
                ZStack {
                    Text("\(locationFragment.currentcapacity!)" + "/"  + "\(locationFragment.maxcapacity)")
                        .foregroundColor(busyColor)
                        .font(.body)
                        .multilineTextAlignment(.trailing)
                        .padding(.top, 6)
                        
                }
                .padding(.all, 3)
                .background(Color.white)
                .cornerRadius(4)
                
                Spacer()
            }
           
        }
        //.aspectRatio(1, contentMode: .fill)
       
    }
}

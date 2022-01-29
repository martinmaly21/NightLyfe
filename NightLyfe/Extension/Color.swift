//
//  Color.swift
//  NightLyfe
//
//  Created by Martin Maly on 2022-01-29.
//

import SwiftUI

extension Color {
    static var gradient: Array<Color> {
        return [
            Color(red: 1/255, green: 120/255, blue: 200/255, opacity: 1.0),
            Color(red: 0/255, green: 0/255, blue: 0/255, opacity: 1.0)
        ]
    }
}

//
//  Array.swift
//  NightLyfe
//
//  Created by Martin Maly on 2022-01-29.
//

import Foundation

extension Array where Element: Hashable {
    var unique: [Element] {
        let set = NSOrderedSet(array: self)

        return set.array as! [Element]
    }
}

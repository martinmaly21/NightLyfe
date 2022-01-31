//
//  CreateLocationManager.swift
//  NightLyfe
//
//  Created by Martin Maly on 2022-01-30.
//

import Foundation

class CreateLocationManager {
    static func createLocation() {
        let newLocation = NewLocation(
            minage: 19,
            name: "Stages Nightclub",
            type: .club,
            mustScreen: true,
            lat: 44.2329261,
            long: -76.4942019,
            description: "A great nightclub do go dancing at.",
            webpage: "",
            currentcapacity: 500,
            maxcapacity: 800,
            photoUrl: "https://www.downtownkingston.ca/sites/downtownkingston.ca/files/img/business/stages_2.jpg"
        )
        
        let input = AddLocationMutation(input: newLocation)
        
        apollo.perform(
            mutation: input,
            publishResultToStore: true,
            queue: .main,
            resultHandler: nil
        )
    }
}

//
//  Movie.swift
//  SwiftUI_Starter
//
//  Created by Karan Bhasin on 29/08/20.
//  Copyright © 2020 Karan Bhaisn. All rights reserved.
//

import SwiftUI

struct Movie : Identifiable {
    var id = UUID()
    var name: String
    var description: String
    var castAndCrews: [CastAndCrew]

    var image: String { return name }
}

struct CastAndCrew: Identifiable {
    var id = UUID()
    let name: String
    let designation: String
    var image: String { return name }

//    static func data() -> [ListModel] {
//        return [ListModel(id: 0, name: "Karan", imageName: "Bhasin"),
//        ListModel(id: 0, name: "Nila", imageName: "Akash"),
//        ListModel(id: 0, name: "Nitin", imageName: "Pant"),
//        ListModel(id: 0, name: "Deepak", imageName: "Carpenter"),
//        ListModel(id: 0, name: "Dileep", imageName: "M")]
//    }
}

let testMovieDetailData = Movie(name: "Ford V Ferrari",
                         description: "American automotive designer Carroll Shelby and fearless British race car driver Ken Miles battle corporate interference, the laws of physics and their own personal demons to build a revolutionary vehicle for the Ford Motor Co.",
                        castAndCrews: testCastAndCrewData)

let testCastAndCrewData = [
    CastAndCrew(name: "James Mangold", designation: "Director"),
    CastAndCrew(name: "Matt Damon", designation: "Carroll"),
    CastAndCrew(name: "Christian Bale", designation: "Ken Miles"),
    CastAndCrew(name: "Caitriona Balfe", designation: "Mollie")
]

//
//  CastAndCrewsView.swift
//  SwiftUI_Starter
//
//  Created by Karan Bhasin on 29/08/20.
//  Copyright © 2020 Karan Bhaisn. All rights reserved.
//

import SwiftUI

struct CastAndCrewsView: View {
    let castAndCrews: [CastAndCrew]

    var body: some View {
        VStack(alignment: .leading) {
            Text("Cast and Crew")
                .padding(.all)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 10) {
                    ForEach(castAndCrews) { castAndCrew in
                        CastAndCrewSingleView(castAndCrew: castAndCrew)
                    }
                }
            }
        }
    }
}

struct CastAndCrewsView_Previews: PreviewProvider {
    static var previews: some View {
        CastAndCrewsView(castAndCrews: [CastAndCrew(name: "K", designation: "Mr. K"), CastAndCrew(name: "B", designation: "Mr. B")])
    }
}

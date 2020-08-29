//
//  CastAndCrewSingleView.swift
//  SwiftUI_Starter
//
//  Created by Karan Bhasin on 29/08/20.
//  Copyright © 2020 Karan Bhaisn. All rights reserved.
//

import SwiftUI

struct CastAndCrewSingleView: View {
    var castAndCrew: CastAndCrew
    var body: some View {
        return VStack(spacing: 3) {
            Image(castAndCrew.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)
                .cornerRadius(40)
            Text(castAndCrew.name)
                .frame(width: 100)
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)
            Text(castAndCrew.designation)
                .font(.subheadline)
                .frame(width: 100)
                .foregroundColor(.secondary)
        }
    }
}

struct CastAndCrewSingleView_Previews: PreviewProvider {
    static var previews: some View {
        CastAndCrewSingleView(castAndCrew: CastAndCrew(name: "JK", designation: "kjhgjk"))
    }
}

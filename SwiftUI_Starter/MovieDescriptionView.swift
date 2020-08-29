//
//  MovieDescriptionView.swift
//  SwiftUI_Starter
//
//  Created by Karan Bhasin on 29/08/20.
//  Copyright © 2020 Karan Bhaisn. All rights reserved.
//

import SwiftUI

struct MovieDescriptionView: View {
    var description: String

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Plot Summary")
            Text(description)
                .font(.subheadline)
                .foregroundColor(.secondary)
                .fixedSize(horizontal: false, vertical: true)
        }
        .padding(.all)
    }
}

struct MovieDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDescriptionView(description: "Hehehehhe")
    }
}

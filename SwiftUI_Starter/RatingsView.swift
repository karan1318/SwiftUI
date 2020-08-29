//
//  RatingsView.swift
//  SwiftUI_Starter
//
//  Created by Karan Bhasin on 29/08/20.
//  Copyright © 2020 Karan Bhaisn. All rights reserved.
//

import SwiftUI

struct RatingsView: View {
    var image: Image
    var text: String
    var subText: String
    var body: some View {
        VStack() {
            image
            Text(text)
            Text(subText)
                .font(.footnote)
                .foregroundColor(.secondary
            )
        }.padding(.all)
    }
}

struct RatingsView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsView(image: Image(systemName: "star"), text: "Rate This", subText: "")
    }
}

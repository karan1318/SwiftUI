//
//  ImageAndRatingsView.swift
//  SwiftUI_Starter
//
//  Created by Karan Bhasin on 29/08/20.
//  Copyright © 2020 Karan Bhaisn. All rights reserved.
//

import SwiftUI

struct ImageAndRatingsView: View {
    var image: String
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            MovieImageView(image: image)
            MovieRatingsView()
        }
    }
}

struct ImageAndRatingsView_Previews: PreviewProvider {
    static var previews: some View {
        ImageAndRatingsView(image: "apple")
    }
}

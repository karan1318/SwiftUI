//
//  MovieImageView.swift
//  SwiftUI_Starter
//
//  Created by Karan Bhasin on 29/08/20.
//  Copyright © 2020 Karan Bhaisn. All rights reserved.
//

import SwiftUI

struct MovieImageView: View {
    let image: String

    var body: some View {
        return VStack {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width, height: 370)
                .clipped()
                .cornerRadius(radius: 50, corners: [.bottomLeft, .bottomRight])
            Spacer(minLength: 50)
        }
    }
}

struct MovieImageView_Previews: PreviewProvider {
    static var previews: some View {
        MovieImageView(image: "apple")
    }
}

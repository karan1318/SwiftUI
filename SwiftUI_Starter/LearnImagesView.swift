//
//  LearnImagesView.swift
//  SwiftUI_Starter
//
//  Created by Karan Bhasin on 11/07/20.
//  Copyright © 2020 Karan Bhaisn. All rights reserved.
//

import SwiftUI

struct LearnImagesView: View {
    var body: some View {
        Image("med")
        .resizable()
        .scaledToFill()
            .frame(width: 200, height: 700, alignment: .center)
            .clipShape(Circle())
            .aspectRatio(contentMode: .fit)
        .clipped()
    }
}

struct LearnImagesView_Previews: PreviewProvider {
    static var previews: some View {
        LearnImagesView()
    }
}

//
//  MovieSubDetailView.swift
//  SwiftUI_Starter
//
//  Created by Karan Bhasin on 29/08/20.
//  Copyright © 2020 Karan Bhaisn. All rights reserved.
//

import SwiftUI

struct MovieSubDetailView: View {
    var body: some View {
        return HStack(spacing: 10) {
            Text("2019")
                .font(.system(size: 13))
                .foregroundColor(.secondary)
            Text("PG-13")
                .font(.system(size: 13))
                .foregroundColor(.secondary)
            Text("2hr 32min")
                .font(.system(size: 13))
                .foregroundColor(.secondary)
        }
    }
}

struct MovieSubDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieSubDetailView()
    }
}

//
//  MovieRatingsView.swift
//  SwiftUI_Starter
//
//  Created by Karan Bhasin on 29/08/20.
//  Copyright © 2020 Karan Bhaisn. All rights reserved.
//

import SwiftUI
enum MovieRatings: CaseIterable, Identifiable {
   var id: MovieRatings { self }

    case ratings
    case rateThis
    case metasscore
}
struct MovieRatingsView: View {
   var body: some View {
        return HStack {
            Spacer(minLength: 30)
            HStack(alignment: .center, spacing: 20) {
                ForEach(MovieRatings.allCases, id: \.self) { movieRating in
                    self.movieRatingViewType(type: movieRating)
                }
            }
            .padding(.leading, 30)
            .background(Color.white)
            .cornerRadius(radius: 30, corners: [.bottomLeft, .topLeft])
            .shadow(radius: 5)
        }
    }

    func movieRatingViewType(type: MovieRatings) -> some View {
        var image: Image
        var text: String
        var subText: String
        switch type {
        case .rateThis:
            image = Image(systemName: "star")
            text = "Rate This"
            subText = ""
        case .ratings:
            image = Image(systemName: "star.fill")
            text = "8.2/10"
            subText = "150,212"
        case .metasscore:
            image = Image(systemName: "star.fill")
            text = "Metascore"
            subText = "62 critic reviews"
        }
         return RatingsView(image: image, text: text, subText: subText)
    }
}

struct MovieRatingsView_Previews: PreviewProvider {
    static var previews: some View {
        MovieRatingsView()
    }
}

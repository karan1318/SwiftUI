//
//  ListView.swift
//  SwiftUI_Starter
//
//  Created by Karan Bhasin on 16/07/20.
//  Copyright © 2020 Karan Bhaisn. All rights reserved.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView {
            HStack(spacing: 5) {
                ScrollView {
                    VStack(spacing: 15) {
                        ForEach(ListModel.data(), id: \.self) { object in
                            CellRow(cellData: object)
                        }
                    }
                }
                List {
                    ForEach(ListModel.data(), id: \.self) { object in
                        CellRow(cellData: object)
                    }
                }
            }
            .navigationBarTitle("My List")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

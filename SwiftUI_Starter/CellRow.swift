//
//  CellRow.swift
//  SwiftUI_Starter
//
//  Created by Karan Bhasin on 16/07/20.
//  Copyright © 2020 Karan Bhaisn. All rights reserved.
//

import SwiftUI
struct ListModel: Identifiable, Hashable {
    let id: Int
    let name: String
    let imageName: String
    
    static func data() -> [ListModel] {
        return [ListModel(id: 0, name: "Karan", imageName: "Bhasin"),
        ListModel(id: 0, name: "Nila", imageName: "Akash"),
        ListModel(id: 0, name: "Nitin", imageName: "Pant"),
        ListModel(id: 0, name: "Deepak", imageName: "Carpenter"),
        ListModel(id: 0, name: "Dileep", imageName: "M")]
    }
}


struct CellRow: View {
    let cellData: ListModel
    
    var body: some View {
        HStack(spacing: 10) {
            Text("Hello")
            Text(cellData.name)
            Button(action: buttonAction) {
                Image(systemName: "chevron.right")
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color.yellow)
            }
            VStack {
                Text(cellData.imageName)
                Image("med")
                .resizable()
                .scaledToFill()
                    .frame(width: 100, height: 100, alignment: .center)
                    .clipShape(Rectangle())
                    .aspectRatio(contentMode: .fit)
                .clipped()
            }
            Spacer()
        }
        .background(Color.green)
    }
    
    private func buttonAction() {
        
    }
}

struct CellRow_Previews: PreviewProvider {
    static var previews: some View {
        CellRow(cellData: ListModel(id: 0, name: "lkjh", imageName: "jkhgj"))
    }
}

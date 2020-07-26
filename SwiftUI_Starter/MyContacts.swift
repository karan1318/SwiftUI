//
//  MyContacts.swift
//  SwiftUI_Starter
//
//  Created by Karan Bhasin on 26/07/20.
//  Copyright © 2020 Karan Bhaisn. All rights reserved.
//

import SwiftUI


struct MyContacts: View {
    @State private var sortingIndex = 0
    
    var body: some View {
        NavigationView {
            VStack(spacing: 5) {
                Text("Scroll List")
                Picker("Sort Contacts by", selection: $sortingIndex) {
                    Text("Name").tag(0)
                    Text("Email").tag(1)
                }.pickerStyle(SegmentedPickerStyle())
                ScrollView {
                    VStack(spacing: 15) {
                        ForEach(Contact.data(), id: \.self) { object in
                            ContactRow(cellData: object)
                        }
                    }
                }
                Text("Table List")
                List {
                    ForEach(Contact.data(), id: \.self) { object in
                        ContactRow(cellData: object)
                    }
                }
            }
            .navigationBarTitle("My List")
        }
    }
}

struct MyContacts_Previews: PreviewProvider {
    static var previews: some View {
        MyContacts()
    }
}

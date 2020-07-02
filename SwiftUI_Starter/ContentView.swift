//
//  ContentView.swift
//  SwiftUI_Starter
//
//  Created by Karan Bhasin on 30/06/20.
//  Copyright © 2020 Karan Bhaisn. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Text(verbatim:"My First Text in SwiftUI!")
            .padding()
            .background(Color.purple)
            .foregroundColor(Color.white)
            .cornerRadius(15)
            .shadow(radius: 15)
            .font(.system(size: 13, weight: .bold, design: .monospaced))
            .frame(width: 140)
            .lineSpacing(1.8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

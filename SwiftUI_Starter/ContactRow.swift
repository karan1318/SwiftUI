//
//  ContactRow.swift
//  SwiftUI_Starter
//
//  Created by Karan Bhasin on 26/07/20.
//  Copyright © 2020 Karan Bhaisn. All rights reserved.
//

import SwiftUI


struct Contact: Identifiable, Hashable {
    
    let id: Int
    let name: String
    let email: String
    let number: String
    
    static func data() -> [Contact] {
        return [
            Contact(id: 0, name: "Nila", email: "alash@gmail.com", number: "8884489221"),
            Contact(id: 1, name: "Nitin", email: "pant@gmail.com", number: "8884489222"),
            Contact(id: 2, name: "Deepak", email: "kumar@gmail.com", number: "8884489223"),
            Contact(id: 3,name: "Dileep", email: "dm@gmail.com", number: "8884489224")]
    }
}

struct ContactRow: View {
    var cellData: Contact
    @State private var showingAlert = false
    var body: some View {
        HStack(spacing: 10) {
            VStack(spacing: 10) {
                Text(cellData.name)
                Text(cellData.email)
            }
            Spacer()
            Button(action: sendMessage) {
                Image(systemName: "message.fill")
                    .frame(width: 20, height: 20, alignment: .leading)
                    .foregroundColor(Color.green)
            }.alert(isPresented: $showingAlert) {
                Alert(title: Text("Coming Soon"), message: Text("We will be live soon with this feature"), dismissButton: .default(Text("Got It!")))
            }
            Button(action: makeVideoCall) {
                Image(systemName: "video.fill")
                    .frame(width: 20, height: 20, alignment: .leading)
                    .foregroundColor(Color.red)
            }.alert(isPresented: $showingAlert) {
                Alert(title: Text("Coming Soon"), message: Text("We will be live soon with this feature"), dismissButton: .default(Text("Got It!")))
            }
            Button(action: buttonAction) {
                Image(systemName: "chevron.right")
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color.yellow)
            }
        }
    }
    
    func sendMessage() {
        self.showingAlert = true
    }
    
    func makeVideoCall() {
        self.showingAlert = true
    }
    
    private func buttonAction() {
        
    }
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactRow(cellData: Contact(id: 1, name: "dss", email: "Ds@sdcom", number: "32332"))
    }
}

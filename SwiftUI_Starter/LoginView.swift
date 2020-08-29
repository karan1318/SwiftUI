//
//  LoginView.swift
//  SwiftUI_Starter
//
//  Created by Karan Bhasin on 09/08/20.
//  Copyright © 2020 Karan Bhaisn. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = "KB@gmail.com"
    @State private var password: String = ""
    
    var body: some View {
        ScrollView() {
            Spacer()
                .frame(height: 50)
            Image("apple")
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80, alignment: .center)
                .clipShape(Circle())
                .aspectRatio(contentMode: .fit)
                .clipped()
            Spacer()
                .frame(height: 30)
            Text("Login").font(.system(size: 35, weight: .bold, design: .default))
            Text("Login Page in SwiftUI")
            Spacer().frame(height: 150)
            TextField("Email", text: $email).textFieldStyle(RoundedBorderTextFieldStyle()).padding(.leading, 40).padding(.trailing, 40)
            SecureField("Password", text: $password).textFieldStyle(RoundedBorderTextFieldStyle()).padding(.leading, 40).padding(.trailing, 40)
            HStack() {
                Spacer()
                Text("Forgot Password").padding(.leading, 40).padding(.trailing, 40)
            }

            Button(action: buttonAction) {
                Text("Login")
                    .fontWeight(.semibold)
                    .font(.title)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
            }.disabled(email.isEmpty || password.isEmpty)
        }
    }
    
    private func buttonAction() {
        print("Loggin in")
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

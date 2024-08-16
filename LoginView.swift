//
//  ExampleView.swift
//  eBuy
//
//  Created by mac on 04/08/2024.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var userSession = UserSession.shared
    
    @State private var username: String = "Zoe"
    @State private var email: String = "fashanu.tosin.3@gmail.com"
    
    var body: some View {
        VStack {
            TextField("Username", text: $username)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
                .padding(.horizontal)
            
            TextField("Email", text: $email)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
                .padding(.horizontal)
                .padding(.top, 10)
            
            Button(action: {
                userSession.login(username: username, email: email)
            }) {
                Text("Login")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.top, 20)
        }
        .padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}


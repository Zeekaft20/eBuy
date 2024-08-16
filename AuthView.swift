//
//  AuthView.swift
//  eBuy
//
//  Created by mac on 03/08/2024.
//

import SwiftUI
import FirebaseAuth

struct AuthView: View {
    @State private var isLoginMode = true
    @State private var email = ""
    @State private var password = ""
    @State private var username = ""
    @State private var errorMessage = ""
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack(alignment: .topLeading) {
                    Image("buy_banner")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 300)
                        .clipped()
                        .padding(.top, -60)
                    
                    HStack {
                        Button(action: {
                            isLoginMode = true
                        }) {
                            Text("Login")
                                .font(.headline)
                                .foregroundColor(isLoginMode ? .green : .white)
                                .padding()
                        }
                        
                        Button(action: {
                            isLoginMode = false
                        }) {
                            Text("Sign up")
                                .font(.headline)
                                .foregroundColor(!isLoginMode ? .green : .white)
                                .padding()
                        }
                    }
                    .padding(.top, 10)
                    .padding(.leading, 20)
                }
                
                Spacer(minLength: 70)
                
                VStack(spacing: 16) {
                    if !isLoginMode {
                        TextField("Username", text: $username)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                            .padding(.horizontal)
                    }
                    
                    TextField("Email", text: $email)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        .padding(.horizontal)
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        .padding(.horizontal)
                    
                    if isLoginMode {
                        HStack {
                            Spacer()
                            Button(action: {
                                // Handle forgot password action
                            }) {
                                Text("Forgot password?")
                                    .font(.subheadline)
                                    .foregroundColor(.blue)
                            }
                            .padding(.horizontal)
                        }
                    }
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {
                        handleAction()
                    }) {
                        Text(isLoginMode ? "Login" : "Sign up")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                            .padding(.horizontal)
                    }
                    
                    Text(errorMessage)
                        .foregroundColor(.red)
                        .padding()
                    
                    Spacer(minLength: 50)
                    
                    HStack {
                        Button(action: {
                            // Handle Apple login
                        }) {
                            Image(systemName: "applelogo")
                                .font(.title)
                                .padding()
                                .background(Color.black)
                                .foregroundColor(.white)
                                .clipShape(Circle())
                        }
                        
                        Button(action: {
                            // Handle Google login
                        }) {
                            Image(systemName: "g.circle.fill")
                                .font(.title)
                                .padding()
                                .background(Color.black)
                                .foregroundColor(.white)
                                .clipShape(Circle())
                        }
                    }
                    .padding(.top)
                }
                .padding(.top, -20)
            }
            .navigationBarHidden(true)
        }
    }
    
    private func handleAction() {
        if isLoginMode {
            loginUser()
        } else {
            registerUser()
        }
    }
    
    private func loginUser() {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                self.errorMessage = "Failed to login: \(error.localizedDescription)"
                return
            }
            self.errorMessage = "Successfully logged in"
        }
    }
    
    private func registerUser() {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                self.errorMessage = "Failed to register: \(error.localizedDescription)"
                return
            }
            self.errorMessage = "Successfully registered"
        }
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}

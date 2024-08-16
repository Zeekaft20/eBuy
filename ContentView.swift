//
//  ContentView.swift
//  eBuy
//
//  Created by mac on 02/08/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var authManager = AuthManager()
    @StateObject private var cartManager = CartManager()
    @StateObject private var userProfile = UserProfile(username: "Username", email: "user@example.com")
    

    var body: some View {
        if authManager.isAuthenticated {
            MainTabView()
                .environmentObject(authManager)
                .environmentObject(cartManager)
        } else {
            AuthView()
                .environmentObject(authManager)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



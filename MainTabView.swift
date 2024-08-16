//
//  MainTabView.swift
//  eBuy
//
//  Created by mac on 03/08/2024.
//

import SwiftUI




struct MainTabView: View {
    @StateObject private var userProfile = UserProfile(username: "Username", email: "user@example.com")
    @EnvironmentObject var tabSelection: TabSelection
    @StateObject private var cartManager = CartManager()
    var body: some View {
        TabView(selection: $tabSelection.selectedTab) {
                    HomeView()
                        .tabItem {
                            Label("Home", systemImage: "house")
                        }
                        .tag(0)
            ProductListView()
                .tabItem {
                    Label("Products", systemImage: "bag")
                }
            CartView()
                .tabItem {
                    Label("Cart", systemImage: "cart")
                }
            ProfileView(userProfile: UserProfile(username: "Username", email: "user@example.com"))

                    .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }
        }
    }
}


   
    
  
     
struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
            .environmentObject(TabSelection()) 
            .environmentObject(CartManager())
    }
}


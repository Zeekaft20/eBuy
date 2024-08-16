//
//  eBuyApp.swift
//  eBuy
//
//  Created by mac on 02/08/2024.
//

import SwiftUI
import Firebase

@main
struct eBuy: App {
    @StateObject private var tabSelection = TabSelection()
        @StateObject private var cartManager = CartManager()
        
      
                   

    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(tabSelection)
                .environmentObject(cartManager)
        }
    }
}


class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        return true
    }
}

//
//  UserSession.swift
//  eBuy
//
//  Created by mac on 04/08/2024.
//

import Foundation
import Combine

class UserSession: ObservableObject {
    static let shared = UserSession()
    
    @Published var username: String = ""
    @Published var email: String = ""
    
    private init() {}
    
    func login(username: String, email: String) {
        self.username = username
        self.email = email
    }
    
    func logout() {
        self.username = ""
        self.email = ""
    }
}

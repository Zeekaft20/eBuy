//
//  UserProfile.swift
//  eBuy
//
//  Created by mac on 04/08/2024.
//

import Foundation
import Combine

class UserProfile: ObservableObject {
    @Published var username: String
    @Published var email: String

    init(username: String, email: String) {
        self.username = username
        self.email = email
    }
}

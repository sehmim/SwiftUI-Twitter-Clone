//
//  User.swift
//  TwitterClone
//
//  Created by Sehmim Haque on 2021-01-10.
//

import Foundation
import Firebase

struct User: Identifiable {
    let id: String
    let email: String
    let username: String
    let profileImageUrl: String
    let fullname: String
    let isCurrentUser: Bool
    
    init(dictionary: [String: Any]) {
        self.id = dictionary["uid"] as? String ?? ""
        self.email = dictionary["email"] as? String ?? ""
        self.username = dictionary["username"] as? String ?? ""
        self.profileImageUrl = dictionary["profileImageUrl"] as? String ?? ""
        self.fullname = dictionary["fullname"] as? String ?? ""
        self.isCurrentUser = Auth.auth().currentUser?.uid == self.id
    }
}

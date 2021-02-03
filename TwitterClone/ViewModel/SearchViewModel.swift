//
//  SearchViewModel.swift
//  TwitterClone
//
//  Created by Sehmim Haque on 2021-01-14.
//

import SwiftUI
import Firebase

class SearchViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        fetchUsers()
    }
    
    func fetchUsers() {
        COLLECTION_USERS.getDocuments { (snapshot , _ ) in
            guard let documents = snapshot?.documents else { return }
            self.users = documents.map({ User(dictionary: $0.data()) })
            
//            ^^^^^^ Short way of doing this 👇🏼
//            documents.forEach { (document) in
//                let user = User(dictionary: document.data())
//                self.users.append(user)
//            }
            
            
        }
    }
}

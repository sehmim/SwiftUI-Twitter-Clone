//
//  TwitterCloneApp.swift
//  TwitterClone
//
//  Created by Sehmim Haque on 2021-01-07.
//

import SwiftUI
import Firebase

@main
struct TwitterCloneApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(AuthViewModel())
        }
    }
}

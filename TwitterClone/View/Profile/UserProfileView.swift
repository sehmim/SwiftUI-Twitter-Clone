//
//  UserProfileView.swift
//  TwitterClone
//
//  Created by Sehmim Haque on 2021-01-08.
//

import SwiftUI

struct UserProfileView: View {
    @State var selectedFilter: TweetFilterOptions = .tweets
    let user: User
    
    var body: some View {
        ScrollView {
            VStack {
                ProfileHeaderView(user: user)
                    .padding(.top)
                                
                ForEach(0..<9) {
                    _ in
                    TweetCell()
                }
            }
            
            .navigationTitle("Batman")
        }
    }
}


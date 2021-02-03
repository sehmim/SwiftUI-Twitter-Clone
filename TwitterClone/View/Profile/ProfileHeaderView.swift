//
//  ProfileHeaderView.swift
//  TwitterClone
//
//  Created by Sehmim Haque on 2021-01-08.
//

import SwiftUI
import Kingfisher

struct ProfileHeaderView: View {
    let user: User
    @State var selectedFilter: TweetFilterOptions = .tweets

    var body: some View {
        VStack {
            KFImage(URL(string: user.profileImageUrl))
                .resizable()
                .scaledToFill()
                .frame(width: 120, height: 120)
                .cornerRadius(120/2)
                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
            Text(user.fullname)
                .font(.system(size: 16, weight: .semibold))
                .padding(.top)
            Text("@\(user.username)")
                .font(.subheadline)
                .foregroundColor(.gray)
            Text("Bio")
                .padding(.vertical)
                .font(.system(size: 14))
            
            HStack {
                VStack {
                    Text("12")
                        .font(.system(size: 16)).bold()
                    Text("Followers")
                        .font(.footnote)
                        .foregroundColor(.gray)

                } .padding(.horizontal)
                VStack {
                    Text("12")
                        .font(.system(size: 16)).bold()
                    Text("Following")
                        .font(.footnote)
                        .foregroundColor(.gray)
                } .padding(.horizontal)
            }
            .padding(.horizontal)
            
            ProfileActionButtonView(isCurrentUser: user.isCurrentUser)
                .padding()
            
            FilterButtonView(selectedOption: $selectedFilter)
            
            Spacer()

        }
    }
}

//
//  UserCell.swift
//  TwitterClone
//
//  Created by Sehmim Haque on 2021-01-07.
//

import SwiftUI
import Kingfisher

struct UserCell: View {
    let user: User
    
    var body: some View {
        HStack {
            KFImage(URL(string: user.profileImageUrl))
                .resizable()
                .scaledToFill()
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .clipped()
                .frame(width: 56, height: 56)
            VStack (alignment: .leading, spacing: 4) {
                Text(user.username)
                    .font(.system(size: 14, weight: .semibold))
                Text(user.fullname)
                    .font(.system(size: 14))
                
            }
            .foregroundColor(.black)
        }
    }
}


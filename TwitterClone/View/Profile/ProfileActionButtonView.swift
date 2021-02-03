//
//  ProfileActionButtonView.swift
//  TwitterClone
//
//  Created by Sehmim Haque on 2021-01-08.
//

import SwiftUI

struct ProfileActionButtonView: View {
    let isCurrentUser: Bool
    
    var body: some View {
        if isCurrentUser {
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Edit Profile")
                        .frame(width: 360, height: 40)
                        .background(Color.blue)
                        .foregroundColor(.white)
                })
                .cornerRadius(20)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .padding()
            }
        } else {
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Follow")
                        .frame(width: 180, height: 40)
                        .background(Color.blue)
                        .foregroundColor(.white)
                })
                .cornerRadius(20)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Message")
                        .frame(width: 180, height: 40)
                        .background(Color.purple)
                        .foregroundColor(.white)
                })
                .cornerRadius(20)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct ProfileActionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileActionButtonView(isCurrentUser: false)
    }
}

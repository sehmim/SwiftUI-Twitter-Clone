//
//  ConversationCell.swift
//  TwitterClone
//
//  Created by Sehmim Haque on 2021-01-08.
//

import SwiftUI

struct ConversationCell: View {
    var body: some View {
        VStack {
            HStack {
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .cornerRadius(28)
                    .clipped()
                    .frame(width: 56, height: 56)
                VStack (alignment: .leading, spacing: 4) {
                    Text("Name")
                        .font(.system(size: 16, weight: .semibold))
                    Text("Longer message text to see whats up man its suppose to wrap.")
                        .font(.system(size: 15))
                        .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    
                }
            }
            Divider()
        } .foregroundColor(.black)
    }
}

struct ConversationCell_Previews: PreviewProvider {
    static var previews: some View {
        ConversationCell()
    }
}

//
//  TweetCell.swift
//  TwitterClone
//
//  Created by Sehmim Haque on 2021-01-07.
//

import SwiftUI

struct TweetCell: View {
    var body: some View {
        VStack {
            HStack (alignment: .top) {
                    Image("batman")
                        .resizable()
                        .scaledToFill()
                        .clipped()
                        .frame(width: 56, height:56)
                        .cornerRadius(56/2)
                VStack (alignment: .leading, spacing: 4) {
                    HStack {
                        Text("Name")
                            .font(.system(size: 14, weight: .semibold))
                        Text("@Subname")
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                        Text("Date")
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                    }
                    Text("It's not who i am undernearth, but what i do that defines me.")
                }
            } .padding(.horizontal) .padding(.vertical)
            HStack {
                Button(action: {}, label: {
                    Image(systemName: "bubble.left")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                        .foregroundColor(.gray)

                })
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                        .foregroundColor(.gray)

                })
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "heart")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                        .foregroundColor(.gray)

                })
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "bookmark")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                        .foregroundColor(.gray)
                })
            } .padding(.horizontal)
            
            Divider()
        }
        .padding(.horizontal, -16)
        .padding(.vertical, -4)

    }
}

struct TweetCell_Previews: PreviewProvider {
    static var previews: some View {
        TweetCell()
    }
}

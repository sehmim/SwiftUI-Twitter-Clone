//
//  FeedView.swift
//  TwitterClone
//
//  Created by Sehmim Haque on 2021-01-07.
//

import SwiftUI

struct FeedView: View {
    @State var isShowingNewTweet = false
    @EnvironmentObject var viewModel: AuthViewModel

    var body: some View {
        ZStack(alignment: .bottomTrailing ) {
            ScrollView {
                VStack {
                    ForEach (0..<20) { _ in
                        TweetCell()
                    }
                }.padding()
            }
            
            Button(action: {
//                self.isShowingNewTweet.toggle()
                viewModel.signOut()
                
            }, label: {
                Image("tweet")
                    .resizable()
                    .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                    .frame(width: 32, height: 32)
                    .padding()
            })
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .padding()
            .fullScreenCover(isPresented: $isShowingNewTweet) {
                NewTweetView(isPresented: $isShowingNewTweet)
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}

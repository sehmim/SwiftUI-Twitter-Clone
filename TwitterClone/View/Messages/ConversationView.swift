//
//  ConversationView.swift
//  TwitterClone
//
//  Created by Sehmim Haque on 2021-01-08.
//

import SwiftUI

struct ConversationView: View {
    @State var isShwoingNewMessageView = false
    @State var showChat = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing ) {
            NavigationLink(
                destination: ChatView(),
                isActive: $showChat,
                label: {})
            
            ScrollView {
                VStack {
                    ForEach (0..<20) { _ in
                        NavigationLink(
                            destination: ChatView(),
                            label: {
                                ConversationCell()
                            })
                    }
                }.padding()
            }
            
            Button( action: { self.isShwoingNewMessageView.toggle()},
                label: {
                    Image(systemName: "envelope")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                        .padding()
                })
                .background(Color(.systemBlue))
                .foregroundColor(.white)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .padding()
                .sheet(isPresented: $isShwoingNewMessageView, content: {
                    NewMessageView(show: $isShwoingNewMessageView, startChat: $showChat)
            })
        }
    }
}

struct ConversationView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationView()
    }
}

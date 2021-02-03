//
//  NewTweetView.swift
//  TwitterClone
//
//  Created by Sehmim Haque on 2021-01-08.
//

import SwiftUI

struct NewTweetView: View {
    @Binding var isPresented: Bool
    @State var captionText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                HStack (alignment: .top) {
                    Image("batman")
                        .resizable()
                        .scaledToFill()
                        .clipped()
                        .frame(width: 64, height: 64, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .cornerRadius(32)
                    TextArea(placeholder: "Whats up", text: $captionText)
                    
                    Spacer()
                }
                .padding()
                .navigationBarItems(leading: Button(action: {
                    self.isPresented.toggle()
                }, label: {
                    Text("Cancel")
                }) , trailing: Button(action: {}, label: {
                    Text("Tweet")
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                }))
                Spacer()
            }
        }
    }
}

struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView(isPresented: .constant(true))
    }
}

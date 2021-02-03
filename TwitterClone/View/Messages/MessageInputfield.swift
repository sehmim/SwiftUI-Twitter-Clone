//
//  MessageInputfield.swift
//  TwitterClone
//
//  Created by Sehmim Haque on 2021-01-08.
//

import SwiftUI

struct MessageInputfield: View {
    @Binding var messageInput: String
    
    var body: some View {
        HStack {
            TextField("Search...", text: $messageInput)
                .textFieldStyle(PlainTextFieldStyle())
                .cornerRadius(8)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Send")
            })
        } .padding()
    }
}

struct MessageInputfield_Previews: PreviewProvider {
    static var previews: some View {
        MessageInputfield(messageInput: .constant("Message..."))
    }
}

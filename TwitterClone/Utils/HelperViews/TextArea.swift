//
//  TextArea.swift
//  TwitterClone
//
//  Created by Sehmim Haque on 2021-01-08.
//

import SwiftUI

struct TextArea: View {
    @Binding var text: String
    let placeholder: String
    
    init(placeholder: String, text: Binding<String>) {
        self._text = text
        self.placeholder = placeholder
        UITextView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        ZStack (alignment: .topLeading) {
            if text.isEmpty {
                Text(placeholder)
                    .foregroundColor(Color(.placeholderText))
                    .padding(.horizontal, 8)
                    .padding(.vertical, 12)
            }
            
            TextEditor(text: $text)
        }
    }
}

//struct TextArea_Previews: PreviewProvider {
//    static var previews: some View {
//        TextArea(text: .constant(""), placeholder: "Caption here")
//    }
//}

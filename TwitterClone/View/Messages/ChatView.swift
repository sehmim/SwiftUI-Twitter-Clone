
import SwiftUI

struct ChatView: View {
    @State var inputMessage: String = ""
    
    var body: some View {
        VStack{
            ScrollView {
                VStack (alignment: .leading, spacing: 12) {
                    ForEach(MOCK_MESSAGES){ message in
                        MessageView(message: message)
                    }
                    .padding(.horizontal)
                }
                .padding(.vertical)
            }
            
            MessageInputfield(messageInput: $inputMessage)
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}

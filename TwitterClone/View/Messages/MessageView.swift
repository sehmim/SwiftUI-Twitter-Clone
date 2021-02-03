import SwiftUI

struct MessageView: View {
    let message: MockMessage
    var body: some View {
        HStack {
            if message.isCurrentUser {
                Spacer()
                Text(message.messageText)
                    .padding()
                    .background(Color.blue)
                    .clipShape(                     ChatBubble(isFromCurrentUser: true))
                    .foregroundColor(.white)
                    .padding(.horizontal)
            } else {
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 40, height:40)
                    .cornerRadius(56/2)
                Text(message.messageText)
                    .padding()
                    .background(Color(.systemGray5))
                    .clipShape(                     ChatBubble(isFromCurrentUser: false))
                    .foregroundColor(.black)
                Spacer()

            }
        }
    }
}


struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(message: MOCK_MESSAGES[0])
    }
}

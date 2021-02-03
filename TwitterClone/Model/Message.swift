import Foundation

struct MockMessage: Identifiable {
    let id: Int
    let imageName, messageText: String
    let isCurrentUser: Bool
}

let MOCK_MESSAGES: [MockMessage] = [
    .init(id: 0, imageName: "batman", messageText: "Hey, whats up", isCurrentUser: false),
    .init(id: 1, imageName: "spiderman", messageText: "nm, how about you", isCurrentUser: true),
    .init(id: 2, imageName: "batman", messageText: "Just chilling", isCurrentUser: false),
    .init(id: 3, imageName: "batman", messageText: "How are things in Gotham", isCurrentUser: false),
    .init(id: 4, imageName: "spiderman", messageText: "...lets not talk about it", isCurrentUser: true),
]

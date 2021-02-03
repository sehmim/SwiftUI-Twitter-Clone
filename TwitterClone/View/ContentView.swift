import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                NavigationView {
                    TabView {
                        FeedView() // Comes from FeedView.swift
                        .tabItem {
                            Image(systemName: "house")
                            Text("Home")
                        }
                        
                        SearchView()
                        .tabItem {
                            Image(systemName: "magnifyingglass")
                            Text("Search")
                        }
                        
                        ConversationView()
                        .tabItem {
                            Image(systemName: "envelope")
                            Text("Message")
                        }
                    }
                    .navigationBarTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
                }
            } else {
                LogInView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

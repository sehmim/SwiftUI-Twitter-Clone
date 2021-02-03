//
//  SearchView.swift
//  TwitterClone
//
//  Created by Sehmim Haque on 2021-01-07.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    @ObservedObject var viewModel = SearchViewModel()
    
    var body: some View {
        ScrollView {
            SearchBar(text: $searchText)
            VStack (alignment: .leading) {
                ForEach (viewModel.users) { user in
                    HStack { Spacer() }
                    
                    NavigationLink(
                        destination: UserProfileView( user: user),
                        label: {
                            UserCell(user: user)
                        })
                }
            } .padding(.horizontal)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

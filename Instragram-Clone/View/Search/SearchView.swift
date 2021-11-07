//
//  SearchView.swift
//  Instragram-Clone
//
//  Created by Sunanta Chuathue on 14/10/21.
//

import SwiftUI

struct SearchView: View {
    @ObservedObject var viewModel = SearchViewModel()
    
    @State var searchText = ""
    @State var inSearchMode = false
    var body: some View {
        ScrollView{
            SearchBar(text: $searchText, isEditing: $inSearchMode)
                .padding()
            
            ZStack{
                if inSearchMode {
                    UserListView(viewModel: viewModel, searchText: $searchText)
                } else {
                    PostGridView(config: .explore)
                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

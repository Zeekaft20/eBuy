//
//  SearchBar.swift
//  eBuy
//
//  Created by mac on 08/08/2024.
//

//import SwiftUI
//
//struct SearchBar: View {
//    @State private var searchText = ""
//    
//    var body: some View {
//        HStack {
//            TextField("Search products, brands and categories", text: $searchText)
//                .padding(7)
//                .padding(.horizontal, 25)
//                .background(Color(.systemGray6))
//                .cornerRadius(8)
//                .overlay(
//                    HStack {
//                        Image(systemName: "magnifyingglass")
//                            .foregroundColor(.gray)
//                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
//                            .padding(.leading, 8)
//                    }
//                )
//                .padding(.horizontal, 10)
//            
//            Button(action: {
//                // Perform search action
//            }) {
//                Image(systemName: "barcode.viewfinder")
//                    .foregroundColor(.gray)
//                    .padding(.trailing, 10)
//            }
//        }
//        .padding(.vertical, 10)
//    }
//}

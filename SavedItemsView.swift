//
//  SavedItemsView.swift
//  eBuy
//
//  Created by mac on 03/08/2024.
//

import SwiftUI

struct SavedItemsView: View {
    @State private var savedItems: [String] = []
    @EnvironmentObject var tabSelection: TabSelection

    var body: some View {
        VStack {
            if savedItems.isEmpty {
                VStack {
                    Image(systemName: "heart.fill") // Placeholder for love image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                        .padding()
                    Text("You haven't saved an item yet!")
                        .font(.headline)
                        .padding(.bottom, 10)
                    Text("Found something you like? Tap on the heart shaped icon next to the item to add it to your wishlist! All your saved items will appear here.")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                        .padding(.bottom, 20)
                    Button(action: {
                        tabSelection.selectedTab = 1 // Assuming the product tab is at index 1
                    }) {
                        Text("Continue Shopping")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
            } else {
                List {
                    ForEach(savedItems, id: \.self) { item in
                        Text(item)
                    }
                }
            }
        }
        .navigationTitle("Saved Items")
    }
}

struct SavedItemsView_Previews: PreviewProvider {
    static var previews: some View {
        SavedItemsView()
            .environmentObject(TabSelection())
    }
}


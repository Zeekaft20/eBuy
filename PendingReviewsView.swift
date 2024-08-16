//
//  PendingReviewsView.swift
//  eBuy
//
//  Created by mac on 03/08/2024.
//

import SwiftUI

struct PendingReviewsView: View {
    @State private var pendingReviews: [String] = []
    @EnvironmentObject var tabSelection: TabSelection

    var body: some View {
        VStack {
            if pendingReviews.isEmpty {
                VStack {
                    Image(systemName: "hand.thumbsup.fill") // Placeholder for thumbs up image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                        .padding()
                    Text("You have no orders waiting for feedback")
                        .font(.headline)
                        .padding(.bottom, 10)
                    Text("After getting your products delivered, you will be able to rate and review them. Your feedback will be published on the product page to help all eBuy's users get the best shopping experience.")
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
                    ForEach(pendingReviews, id: \.self) { review in
                        Text(review)
                    }
                }
            }
        }
        .navigationTitle("Pending Reviews")
    }
}

struct PendingReviewsView_Previews: PreviewProvider {
    static var previews: some View {
        PendingReviewsView()
            .environmentObject(TabSelection())
    }
}

class TabSelection: ObservableObject {
    @Published var selectedTab: Int = 0
}

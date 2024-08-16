//
//  CategoryGrid.swift
//  eBuy
//
//  Created by mac on 08/08/2024.
//

//import SwiftUI
//
//struct CategoryItem: Identifiable {
//    var id = UUID()
//    var imageName: String
//    var title: String
//}
//
//struct CategoryGrid: View {
//    let categories: [CategoryItem] = [
//        CategoryItem(imageName: "house", title: "Home Entertainment"),
//        CategoryItem(imageName: "phone", title: "Phone Deals"),
//        CategoryItem(imageName: "fridge", title: "Appliances Deals"),
//        // Add more categories as needed
//    ]
//    
//    let columns = [
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//        GridItem(.flexible())
//    ]
//    
//    var body: some View {
//        LazyVGrid(columns: columns, spacing: 20) {
//            ForEach(categories) { category in
//                VStack {
//                    Image(systemName: category.imageName)
//                        .resizable()
//                        .frame(width: 50, height: 50)
//                    Text(category.title)
//                        .font(.caption)
//                        .multilineTextAlignment(.center)
//                }
//                .padding()
//                .background(Color.blue.opacity(0.1))
//                .cornerRadius(8)
//            }
//        }
//        .padding()
//    }
//}

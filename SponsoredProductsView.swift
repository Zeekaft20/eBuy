//
//  Sponsored Products Section.swift
//  eBuy
//
//  Created by mac on 08/08/2024.
//

//import SwiftUI
//
//struct SponsoredProduct: Identifiable {
//    var id = UUID()
//    var imageName: String
//    var title: String
//    var price: String
//}
//
//struct SponsoredProductsView: View {
//    let sponsoredProducts: [SponsoredProduct] = [
//        SponsoredProduct(imageName: "nivea", title: "NIVEA Men Dry Impact...", price: "₦ 1,500"),
//        SponsoredProduct(imageName: "bracelet", title: "Fashion Bracelet...", price: "₦ 500"),
//        // Add more sponsored products as needed
//    ]
//    
//    var body: some View {
//        VStack(alignment: .leading) {
//            HStack {
//                Text("Sponsored products")
//                    .font(.headline)
//                Spacer()
//            }
//            .padding(.horizontal)
//            
//            ScrollView(.horizontal, showsIndicators: false) {
//                HStack(spacing: 20) {
//                    ForEach(sponsoredProducts) { product in
//                        VStack(alignment: .leading) {
//                            Image(systemName: product.imageName)
//                                .resizable()
//                                .frame(width: 100, height: 100)
//                                .cornerRadius(8)
//                            Text(product.title)
//                                .font(.caption)
//                            Text(product.price)
//                                .font(.caption)
//                                .fontWeight(.bold)
//                        }
//                        .padding()
//                        .background(Color.white)
//                        .cornerRadius(8)
//                        .shadow(radius: 2)
//                    }
//                }
//                .padding(.horizontal)
//            }
//        }
//    }
//}
 

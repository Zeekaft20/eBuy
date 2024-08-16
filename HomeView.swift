//
//  HomeView.swift
//  eBuy
//
//  Created by mac on 06/08/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                
                // Search Bar
                HStack {
                    Image(systemName: "magnifyingglass")
                    TextField("Search products, brands and categories", text: .constant(""))
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal)
                
                // Flash Sale Banner
                ZStack {
                    Rectangle()
                        .fill(Color.red)
                        .frame(height: 50)
                    HStack {
                        Text("Flash Sale")
                            .font(.headline)
                            .foregroundColor(.white)
                        Spacer()
                        Text("23h : 32m : 28s")
                            .font(.subheadline)
                            .foregroundColor(.white)
                    }
                    .padding(.horizontal)
                }
                .padding(.top)
                
                // Shop From Our Collections
                Text("Shop From Our Collections")
                    .font(.title2)
                    .bold()
                    .padding(.horizontal)
                    .padding(.top, 10)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        CollectionItem(imageName: "homeet", title: "Home Entertainment")
                        CollectionItem(imageName: "smartphone", title: "Phone Deals")
                        CollectionItem(imageName: "appliance", title: "Appliances Deals")
                        CollectionItem(imageName: "beauty", title: "Beauty Deals")
                        CollectionItem(imageName: "computer", title: "Computing Deals")
                        CollectionItem(imageName: "acess", title: "Accessories Deals")
                    }
                    .padding(.horizontal)
                }
                
                // Phones Super Sale
                Text("Phones Super Sale")
                    .font(.title2)
                    .bold()
                    .padding(.horizontal)
                    .padding(.top, 10)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ProductItem(imageName: "smartphone", price: "₦19,887", discount: "-20%")
                        ProductItem(imageName: "smartphone", price: "₦18,900", discount: "-37%")
                        ProductItem(imageName: "smartphone", price: "₦19,700", discount: "-25%")
                        ProductItem(imageName: "smartphone", price: "₦19,700", discount: "-25%")
                        ProductItem(imageName: "smartphone", price: "₦19,700", discount: "-25%")
                    }
                    .padding(.horizontal)
                }
                
                // Sponsored Products
                Text("Sponsored products")
                    .font(.title2)
                    .bold()
                    .padding(.horizontal)
                    .padding(.top, 10)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ProductItem(imageName: "sponsored1", price: "₦1,500", discount: "-15%")
                        ProductItem(imageName: "sponsored2", price: "₦2,000", discount: "-25%")
                        ProductItem(imageName: "sponsored3", price: "₦3,500", discount: "-10%")
                        ProductItem(imageName: "sponsored4", price: "₦3,500", discount: "-70%")
                        ProductItem(imageName: "sponsored5", price: "₦3,500", discount: "-40%")
                    }
                    .padding(.horizontal)
                }
                
                Spacer()
            }
        }
    }
}

struct CollectionItem: View {
    let imageName: String
    let title: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
            Text(title)
                .font(.footnote)
                .multilineTextAlignment(.center)
        }
        .frame(width: 120)
    }
}

struct ProductItem: View {
    let imageName: String
    let price: String
    let discount: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
//            Text(product.name)
//                .font(.headline)
            Text(price)
                .font(.headline)
            Text(discount)
                .font(.subheadline)
                .foregroundColor(.red)
        }
        .frame(width: 120)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
//struct HomeView: View {
//    var body: some View {
//        ScrollView {
//            VStack {
//                SearchBar()
//                CategoryGrid()
//                FlashSaleView()
//                SponsoredProductsView()
//            }
//            .padding(.vertical)
//        }
//        .background(Color(.systemGray6).edgesIgnoringSafeArea(.all))
//    }
//}

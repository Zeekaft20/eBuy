//
//  ProductSlideView.swift
//  eBuy
//
//  Created by mac on 02/08/2024.
//

import SwiftUI

struct ProductSlideView: View {
    var products: [Product]

    var body: some View {
        TabView {
            ForEach(products) { product in
                VStack {
                    Image("imageName")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 300)
                    Text(product.name)
                        .font(.largeTitle)
                        .padding()
                    Text("$\(product.price, specifier: "%.2f")")
                        .font(.title)
                        .padding()
                    NavigationLink(destination: ProductDetailView(product: product)) {
                        Text("View Details")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(8)
                    }
                    .padding()
                }
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct ProductSlideView_Previews: PreviewProvider {
    static var previews: some View {
        ProductSlideView(products: sampleProducts)
    }
}

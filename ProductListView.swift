//
//  ProductListView.swift
//  eBuy
//
//  Created by mac on 02/08/2024.
//
//
import SwiftUI

struct ProductListView: View {
    @State private var selectedSubCategory: ProductSubCategory? = nil
    
    private var filteredProducts: [Product] {
        if let subCategory = selectedSubCategory {
            return sampleProducts.filter { $0.subCategory == subCategory }
        } else {
            return sampleProducts
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Picker("Select Category", selection: $selectedSubCategory) {
                    Text("All").tag(ProductSubCategory?.none)
                    ForEach(ProductSubCategory.allCases, id: \.self) { subCategory in
                        Text(subCategory.displayName).tag(subCategory as ProductSubCategory?)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                
                List(filteredProducts) { product in
                    NavigationLink(destination: ProductDetailView(product: product)) {
                        HStack {
                            Image(product.imageName)
                                .resizable()
                                .frame(width: 50, height: 50)
                            VStack(alignment: .leading) {
                                Text(product.name)
                                    .font(.headline)
                                Text("$\(product.price, specifier: "%.2f")")
                                    .font(.subheadline)
                            }
                        }
                    }
                }
                .navigationTitle("Products")
            }
        }
    }
}

struct ProductListView_Previews: PreviewProvider {
    static var previews: some View {
        ProductListView()
    }
}

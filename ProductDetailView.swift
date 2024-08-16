//
//  ProductDetailView.swift
//  eBuy
//
//  Created by mac on 02/08/2024.
//

import SwiftUI

struct ProductDetailView: View {
    var product: Product
    @EnvironmentObject var cartManager: CartManager
    @State private var quantity: Int = 1
        @State private var selectedState: String = ""
        @State private var selectedArea: String = ""
    
    let states = ["Lagos", "Ogun", "Oyo"]
        let areas = ["Ketu", "VI", "Lekki"]
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(product.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)
            
            Text(product.name)
                .font(.title)
                .padding(.top)
            
            Text("$\(product.price, specifier: "%.2f")")
                .font(.title2)
                .foregroundColor(.secondary)
            
            Text("Description")
                .font(.headline)
                .padding(.top)
            
            Text(product.description)
            
            HStack {
                Text("Rating:")
                ForEach(0..<5) { index in
                    Image(systemName: index < Int(product.rating) ? "star.fill" : "star")
                        .foregroundColor(index < Int(product.rating) ? .yellow : .gray)
                }
            }
            Spacer()
            
            HStack {
                               Text("Quantity:")
                               Button(action: {
                                   if quantity > 1 {
                                       quantity -= 1
                                   }
                               }) {
                                   Image(systemName: "minus.circle")
                                       .foregroundColor(.red)
                               }
                               Text("\(quantity)")
                                   .padding(.horizontal)
                               Button(action: {
                                   if quantity < product.unitsLeft {
                                       quantity += 1
                                   }
                               }) {
                                   Image(systemName: "plus.circle")
                                       .foregroundColor(.green)
                               }
                           }
                           .padding(.bottom)
            Text("Delivery:")
                             .font(.headline)
                         Picker("Select State", selection: $selectedState) {
                             ForEach(states, id: \.self) {
                                 Text($0)
                             }
                         }
                         .pickerStyle(MenuPickerStyle())
                         .padding(.bottom)
                         
                         Picker("Select Area", selection: $selectedArea) {
                             ForEach(areas, id: \.self) {
                                 Text($0)
                             }
                         }
                         .pickerStyle(MenuPickerStyle())
                         .padding(.bottom)
            Button(action: {
                                cartManager.addToCart(product: product, quantity: quantity)
                            }) {
                                Text("Add to Cart")
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(Color.green)
                                    .cornerRadius(8)
                        }
            .padding(.top)
            
            Spacer()
        }
        .padding()
        .navigationTitle("Product Details")
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: sampleProducts[0])
            .environmentObject(CartManager())
    }
}

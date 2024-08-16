//
//  Product.swift
//  eBuy
//
//  Created by mac on 02/08/2024.
//


import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var price: Double
    var description: String
    var rating: Double
    var imageName: String
    var seller: String
    var unitsLeft: Int
    var subCategory: ProductSubCategory
}

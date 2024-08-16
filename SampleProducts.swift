//
//  ProductSubCategories.swift
//  eBuy
//
//  Created by mac on 03/08/2024.
//

import SwiftUI

let sampleProducts: [Product] = [
    Product(name: "Men's T-Shirt", price: 19.99, description: "A comfortable cotton T-shirt for men.", rating: 4.5, imageName: "tshirt", seller: "FashionStore", unitsLeft: 10, subCategory: .clothing(.male)),
    Product(name: "Women's Dress", price: 49.99, description: "A stylish dress for women.", rating: 4.8, imageName: "dress", seller: "FashionStore", unitsLeft: 5, subCategory: .clothing(.female)),
    Product(name: "Running Shoes (Men)", price: 89.99, description: "High-quality running shoes for men.", rating: 4.8, imageName: "running_shoes", seller: "FootwearShop", unitsLeft: 5, subCategory: .shoes(.male)),
    Product(name: "Running Shoes (Women)", price: 89.99, description: "High-quality running shoes for women.", rating: 4.7, imageName: "running_shoes_women", seller: "FootwearShop", unitsLeft: 10, subCategory: .shoes(.female)),
    Product(name: "Kids' Backpack", price: 29.99, description: "A fun and durable backpack for kids.", rating: 4.2, imageName: "backpack", seller: "KidsGear", unitsLeft: 20, subCategory: .kids),
    Product(name: "Smartphone", price: 699.99, description: "Latest model smartphone with amazing features.", rating: 4.7, imageName: "smartphone", seller: "ElectroStore", unitsLeft: 15, subCategory: .electronics)
]

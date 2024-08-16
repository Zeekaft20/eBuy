//
//  sample products.swift
//  eBuy
//
//  Created by mac on 03/08/2024.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var description: String
    var price: Double
    var imageName: String
}

let sampleProducts = [
    Product(name: "Sample Product 1", description: "Description 1", price: 29.99, imageName: "product1"),
    Product(name: "Sample Product 2", description: "Description 2", price: 49.99, imageName: "product2")
]

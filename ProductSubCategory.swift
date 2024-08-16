//
//  ProductCategory.swift
//  eBuy
//
//  Created by mac on 03/08/2024.
//

import Foundation

enum ProductCategory: String, CaseIterable, Identifiable {
    case clothing
    case shoes
    case kids
    case electronics
    
    var id: String { rawValue }
}

enum ClothingCategory: String, CaseIterable, Identifiable {
    case male
    case female
    
    var id: String { rawValue }
}

enum ShoesCategory: String, CaseIterable, Identifiable {
    case male
    case female
    
    var id: String { rawValue }
}

enum ProductSubCategory: Hashable, Identifiable {
    case clothing(ClothingCategory)
    case shoes(ShoesCategory)
    case kids
    case electronics
    
    var id: String {
        switch self {
        case .clothing(let category):
            return "clothing-\(category.rawValue)"
        case .shoes(let category):
            return "shoes-\(category.rawValue)"
        case .kids:
            return "kids"
        case .electronics:
            return "electronics"
        }
    }
    
    var displayName: String {
        switch self {
        case .clothing(let category):
            return "Clothing (\(category.rawValue.capitalized))"
        case .shoes(let category):
            return "Shoes (\(category.rawValue.capitalized))"
        case .kids:
            return "Kids"
        case .electronics:
            return "Electronics"
        }
    }
    
    static var allCases: [ProductSubCategory] {
        return [
            .clothing(.male),
            .clothing(.female),
            .shoes(.male),
            .shoes(.female),
            .kids,
            .electronics
        ]
    }
}

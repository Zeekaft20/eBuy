//
//  ViewModifier.swift
//  eBuy
//
//  Created by mac on 03/08/2024.
//

import SwiftUI

struct BadgeModifier: ViewModifier {
    var count: Int
    
    func body(content: Content) -> some View {
        ZStack(alignment: .topTrailing) {
            content
            
            if count > 0 {
                Text("\(count)")
                    .font(.caption2)
                    .foregroundColor(.white)
                    .padding(5)
                    .background(Color.red)
                    .clipShape(Circle())
                    .offset(x: 15, y: -10)
            }
        }
    }
}

extension View {
    func badge(count: Int) -> some View {
        self.modifier(BadgeModifier(count: count))
    }
}

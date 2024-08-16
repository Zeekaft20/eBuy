//
//  TabViewModifier.swift
//  eBuy
//
//  Created by mac on 03/08/2024.
//

import SwiftUI

struct TabBarBadgeModifier: ViewModifier {
    var count: Int
    var color: Color = .red
    
    func body(content: Content) -> some View {
        content
            .overlay(
                ZStack {
                    if count > 0 {
                        Circle()
                            .fill(color)
                            .frame(width: 20, height: 20)
                            .offset(x: 10, y: -10)
                        Text("\(count)")
                            .foregroundColor(.white)
                            .font(.caption)
                            .offset(x: 10, y: -10)
                    }
                }, alignment: .topTrailing
            )
    }
}

extension View {
    func badge(count: Int, color: Color = .red) -> some View {
        self.modifier(TabBarBadgeModifier(count: count, color: color))
    }
}

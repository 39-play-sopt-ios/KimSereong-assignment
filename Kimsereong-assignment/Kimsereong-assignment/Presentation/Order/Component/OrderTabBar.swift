//
//  OrderTabBar.swift
//  Kimsereong-assignment
//
//  Created by 김세령 on 10/30/26.
//

import SwiftUI

struct OrderTabBar: View {
    let isFavorite: Bool
    let onFavoriteTapped: () -> Void
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            FavoriteButton(
                isFavorite: isFavorite,
                onTap: onFavoriteTapped
            )
            .padding(.trailing, 20)
            
            OrderButton(title: "주문하기")
            
        }
        .padding(.top, 14)
        .padding(.leading, 21)
        .padding(.trailing, 24)
        .frame(height: 62)
        .frame(maxWidth: .infinity)
        .background {
            Color.white
                .ignoresSafeArea(edges: .bottom)
                .shadow(
                    color: .black.opacity(0.1),
                    radius: 6.5, x: 0, y: -2
                )
        }
    }
}

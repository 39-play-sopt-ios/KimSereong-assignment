//
//  OrderTabBar.swift
//  Kimsereong-assignment
//
//  Created by 김세령 on 10/30/26.
//

import SwiftUI

struct OrderTabBar: View {
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            Image(.heartEmpty)
                .padding(.trailing, 20)
            
            OrderButton(title: "주문하기")
        }
        .frame(height: 62)
        .frame(maxWidth: .infinity)
        .padding(.leading, 21)
        .padding(.trailing, 24)
        .background {
            Color.white
                .ignoresSafeArea(edges: .bottom)
                .shadow(
                    color: .black.opacity(0.1),
                    radius: 6.5,
                    x: 0,
                    y: -2
                )
        }
    }
}

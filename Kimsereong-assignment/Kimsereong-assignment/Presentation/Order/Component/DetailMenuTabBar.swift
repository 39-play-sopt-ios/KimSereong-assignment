//
//  DetailMenuTabBar.swift
//  Kimsereong-assignment
//
//  Created by 김세령 on 10/29/26.
//

import SwiftUI

struct DetailMenuTabBar: View {
    var body: some View {
        HStack(alignment: .center, spacing: 28) {
            Spacer()
                .frame(width: 14)
            
            Text("음료")
                .foregroundStyle(.black)
            
            Text("푸드")
            
            Text("상품")
            
            Spacer()
        }
        .frame(height: 46)
        .font(.Medium(14))
        .foregroundStyle(.gray300)
        
        .overlay(alignment: .bottom) {
            Rectangle()
                .fill(Color.gray200)
                .frame(height: 1)
        }
    }
}

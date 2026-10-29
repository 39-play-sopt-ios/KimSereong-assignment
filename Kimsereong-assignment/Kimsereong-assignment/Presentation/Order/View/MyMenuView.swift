//
//  MyMenuView.swift
//  Kimsereong-assignment
//
//  Created by 김세령 on 10/29/26.
//

import SwiftUI

struct MyMenuView: View {
    var body: some View {
        ScrollView {
            Spacer()
                .frame(height: 29)
            
            Text("""
            등록된 나만의 메뉴가 없어요.
            즐겨 찾는 음료나 푸드를 나만의 메뉴로 등록하고
            빠르게 주문해 보세요.
            """)
            .multilineTextAlignment(.center)
            .foregroundStyle(.gray300)
            .font(.Regular(14))
            .padding(.horizontal, 21)
            .padding(.vertical, 14)
        }
    }
}

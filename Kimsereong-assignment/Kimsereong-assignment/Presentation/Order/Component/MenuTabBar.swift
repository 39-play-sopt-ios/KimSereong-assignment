//
//  MenuButton.swift
//  Kimsereong-assignment
//
//  Created by 김세령 on 10/25/26.
//

import SwiftUI

enum OrderMenuTab: CaseIterable {
    case all
    case my
    
    var title: String {
        switch self {
        case .all: "전체 메뉴"
        case .my: "나만의 메뉴"
        }
    }
}

struct MenuTabBar: View {
    @Binding var selectedTab: OrderMenuTab
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            ForEach(OrderMenuTab.allCases, id: \.self){ tab in
                Button {
                    selectedTab = tab
                } label: {
                    VStack(spacing: 0) {
                        Text(tab.title)
                            .font(.Medium(14))
                            .foregroundStyle(
                                selectedTab == tab
                                ? Color.starbucksGreen
                                : Color.gray300
                            )
                            .frame(maxWidth: .infinity)
                            .frame(width: 115, height: 46)

                            .overlay(alignment: .bottom) {
                                Rectangle()
                                    .fill(
                                        selectedTab == tab
                                        ? Color.starbucksGreen
                                        : Color.clear
                                    )
                                    .frame(height: 4)
                            }
                    }
                }
                .buttonStyle(.plain)
            }
            Spacer(minLength: 0)
        }
        .overlay(alignment: .bottom) {
            Rectangle()
                .fill(Color.gray200)
                .frame(height: 1)
        }
    }
}

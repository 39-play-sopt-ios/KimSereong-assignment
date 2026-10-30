//
//  MyMenuView.swift
//  Kimsereong-assignment
//
//  Created by 김세령 on 10/29/26.
//

import SwiftUI

struct MyMenuView: View {
    let viewModel: OrderViewModel
    
    var body: some View {
            if viewModel.favoriteMenus.isEmpty {
                ScrollView {
                    emptyMenuMessage
                }
            } else {
                favoriteMenuList
            }
    }
    
    private var emptyMenuMessage: some View {
        Text("""
        등록된 나만의 메뉴가 없어요.
        즐겨 찾는 음료나 푸드를 나만의 메뉴로 등록하고
        빠르게 주문해 보세요.
        """)
        .multilineTextAlignment(.center)
        .foregroundStyle(.gray300)
        .font(.Regular(14))
        .padding(.top, 29)
        .padding(.horizontal, 21)
    }
    
    private var favoriteMenuList: some View {
        List(viewModel.favoriteMenus) { item in
            HStack(spacing: 12) {
                MenuItemRow(item: item)
                
                FavoriteButton(
                    isFavorite: viewModel.isFavorite(id: item.id),
                    onTap: {
                        viewModel.toggleFavorite(id: item.id)
                    }
                )
            }
            .listRowSeparator(.hidden)
            .listRowInsets(
                EdgeInsets(
                    top: 14,
                    leading: 21,
                    bottom: 14,
                    trailing: 21
                )
            )
            .listRowBackground(Color.white)
        }
        .listStyle(.plain)
        .scrollContentBackground(.hidden)
        .background(.white)
    }
}

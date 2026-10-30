//
//  NewMenuList.swift
//  Kimsereong-assignment
//
//  Created by 김세령 on 10/30/26.
//

import SwiftUI

struct NewMenuList: View {
    let items: [NewMenuItemModel]
    @Binding var path: [OrderRoute]
    
    var body: some View {
        List(items) { item in
            Group {
                if item.id == "sweet-potato-latte-iced" {
                    Button {
                        path.append(.detailMenu(menuID: item.id))
                    } label: {
                        MenuItemRow(item: item)
                    }
                } else {
                    MenuItemRow(item: item)
                }
            }
            .listRowSeparator(.hidden)
            .listRowInsets(
                EdgeInsets(
                    top: 14, leading: 21, bottom: 14, trailing: 0
                )
            )
            .listRowBackground(Color.white)
        }
        .listStyle(.plain)
        .contentMargins(.top, 28, for: .scrollContent)
        .scrollContentBackground(.hidden)
        .background(.white)
    }
}

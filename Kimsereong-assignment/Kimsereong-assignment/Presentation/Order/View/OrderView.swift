//
//  OrderView.swift
//  Kimsereong-assignment
//
//  Created by 김세령 on 10/24/26.
//

import SwiftUI

struct OrderView: View {
    @State private var selectedTab: OrderMenuTab = .all
    
    var body: some View {

        VStack(alignment: .center, spacing: 0) {
            TopNavigationBar(type: .searchOnly)
            
            PageTitle(title: "Order")
    
            MenuTabBar(selectedTab: $selectedTab)

            switch selectedTab {
                        case .all:
                            DetailMenuTabBar()
                            MainMenuList(items: MenuCategoryModel.menus)
                        case .my:
                            MyMenuView()
                        }
            
            Spacer()
        }
    }
}

#Preview {
    OrderView()
}

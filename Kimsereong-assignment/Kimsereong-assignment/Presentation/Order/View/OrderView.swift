//
//  OrderView.swift
//  Kimsereong-assignment
//
//  Created by 김세령 on 10/24/26.
//

import SwiftUI

struct OrderView: View {
    @State private var selectedTab: OrderMenuTab = .all
    @Binding var path: [OrderRoute]
    
    var body: some View {
        NavigationStack(path: $path){
            VStack(alignment: .center, spacing: 0) {
                TopNavigationBar(type: .searchOnly)
                
                PageTitle(title: "Order")
        
                MenuTabBar(selectedTab: $selectedTab)

                switch selectedTab {
                            case .all:
                                DetailMenuTabBar()
                                MainMenuList(items: MenuCategoryModel.menus, path: $path)
                            case .my:
                                MyMenuView()
                            }
                
                Spacer()
            }
            .navigationDestination(for: OrderRoute.self) { route in
                switch route {
                case .newMenu:
                    NewMenuView(path: $path)
                case .detailMenu:
                    DetailMenuView()
                }
            }
        }
    }
}

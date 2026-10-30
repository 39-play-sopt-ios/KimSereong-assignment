//
//  CustomTabBarView.swift
//  Kimsereong-assignment
//
//  Created by 김세령 on 10/24/26.
//

import SwiftUI

enum MainTab: CaseIterable {
    case home, pay, order, gift, other
    
    var title: String {
        switch self {
        case .home: "Home"
        case .pay: "Pay"
        case .order: "Order"
        case .gift: "Gift"
        case .other: "Other"
        }
    }
    
    var icon: ImageResource {
        switch self {
        case .home: .homeGrey
        case .pay: .payGrey
        case .order: .orderGrey
        case .gift: .giftGrey
        case .other: .otherGrey
        }
    }
    
    var selectedIcon: ImageResource {
        switch self {
        case .home: .homeGreen
        case .pay: .payGreen
        case .order: .orderGreen
        case .gift: .giftGreen
        case .other: .otherGreen
        }
    }
}

enum OrderRoute: Hashable {
    case newMenu
    case detailMenu(menuID: String)
}

struct MainTabBarView: View {
    @State private var selectedTab: MainTab = .order
    @State private var orderPath: [OrderRoute] = []
    @State private var viewModel = OrderViewModel()
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .toolbar(.hidden, for: .tabBar)
                .tag(MainTab.home)
            
            PayView()
                .toolbar(.hidden, for: .tabBar)
                .tag(MainTab.pay)
            
            OrderView(path: $orderPath, viewModel: viewModel)
                .toolbar(.hidden, for: .tabBar)
                .tag(MainTab.order)
            
            GiftView()
                .toolbar(.hidden, for: .tabBar)
                .tag(MainTab.gift)
            
            OtherView()
                .toolbar(.hidden, for: .tabBar)
                .tag(MainTab.other)
        }
        .safeAreaInset(edge: .bottom, spacing: 0) {
            if selectedTab == .order,
               case let .detailMenu(menuID)? = orderPath.last {
                OrderTabBar(
                    isFavorite: viewModel.isFavorite(id: menuID),
                    onFavoriteTapped: {
                        viewModel.toggleFavorite(id: menuID)
                    }
                )
            } else {
                VStack(spacing: 0) {
                    if selectedTab == .order {
                        LocationTabBar()
                    }
                    
                    CustomTabBar(selectedTab: $selectedTab)
                }
            }
        }
    }
    
    private var isDetailView: Bool {
        guard let lastRoute = orderPath.last else {
            return false
        }
        
        if case .detailMenu = lastRoute {
            return true
        }
        
        return false
    }
}

struct CustomTabBar: View {
    @Binding var selectedTab: MainTab
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            ForEach(MainTab.allCases, id: \.self) { tab in
                Button {
                    selectedTab = tab
                } label: {
                    VStack(alignment: .center, spacing: 0) {
                        Image(selectedTab == tab ? tab.selectedIcon : tab.icon)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                        
                            .padding(2)
                        
                        Text(tab.title)
                            .font(.Medium(12))
                            .foregroundStyle(
                                selectedTab == tab ? Color("starbucks_green") : Color.gray250
                            )
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 48)
                }
                .buttonStyle(.plain)
            }
            .frame(height: 62)
        }
        .background {
            Color.white
                .ignoresSafeArea(edges: .bottom)
        }
    }
}

#Preview {
    MainTabBarView()
}

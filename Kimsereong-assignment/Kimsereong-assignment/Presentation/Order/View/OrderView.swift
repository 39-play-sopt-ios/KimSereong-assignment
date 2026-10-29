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
            
            HStack(alignment: .center, spacing: 0) {
                Text("Order")
                    .font(.SemiBold(28))
                    .padding(.leading, 18)
                
                Spacer()
            }
            .scaledToFill()
            .frame(height: 46)
    
            MenuTabBar(selectedTab: $selectedTab)
            
            DetailMenuTabBar()

            switch selectedTab {
                        case .all:
                            AllMenuView()
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

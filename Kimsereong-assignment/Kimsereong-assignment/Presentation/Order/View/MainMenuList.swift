//
//  MainMenuList.swift
//  Kimsereong-assignment
//
//  Created by 김세령 on 10/29/26.
//

import SwiftUI

struct MenuCategoryRow: View {
    let item: MenuCategoryModel
    
    var body: some View {
        HStack(alignment: .center, spacing: 21) {
            Image(item.image)
                .resizable()
                .scaledToFill()
                .frame(width: 70, height: 70)
                .clipShape(Circle())
            
            Text(item.title)
                .font(.SemiBold(14))
            
            Spacer(minLength: 0)
        }
    }
}

struct MainMenuList: View {
    let items: [MenuCategoryModel]
    @State private var showsNewMenu = false
    
    var body: some View {
        List(items) { item in
            Group {
                if item.id == "new" {
                    Button {
                        showsNewMenu = true
                    } label: {
                        MenuCategoryRow(item: item)
                    }
                } else {
                    MenuCategoryRow(item: item)
                }
            }
                .listRowSeparator(.hidden)
                .listRowInsets(
                    EdgeInsets(
                        top: 0, leading: 28, bottom: 0, trailing: 0
                )
            )
            .listRowBackground(Color.white)
        }
        .listStyle(.plain)
        .contentMargins(.top, 26, for: .scrollContent)
        .listRowSpacing(21)
        .scrollContentBackground(.hidden)
        .background(.white)
        .navigationDestination(isPresented: $showsNewMenu) {
            NewMenuView()
        }
    }
}

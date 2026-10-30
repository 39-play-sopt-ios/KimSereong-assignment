//
//  NewMenuList.swift
//  Kimsereong-assignment
//
//  Created by 김세령 on 10/30/26.
//

import SwiftUI

struct NewMenuRow: View {
    let item: NewMenuItemModel
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            Image(item.image)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .padding(.trailing, 12)
            
            VStack(alignment: .leading, spacing: 0) {
                Text(item.name)
                    .font(.SemiBold(14))
                    .foregroundColor(.darkgary)
                    .padding(.bottom, 4)
                
                Text(item.englishName)
                    .font(.Regular(12))
                    .foregroundColor(.gray280)
                    .padding(.bottom, 10)
                
                Text(item.price)
                    .font(.SemiBold(14))
                    .foregroundColor(.darkgary)
            }
            Spacer(minLength: 0)
        }
    }
}

struct NewMenuList: View {
    let items: [NewMenuItemModel]
    @State private var showsDetailMenu = false
    
    var body: some View {
        List(items) { item in
            Group {
                if item.id == "sweet-potato-latte-iced" {
                    Button {
                        showsDetailMenu = true
                    } label: {
                        NewMenuRow(item: item)
                    }
                } else {
                    NewMenuRow(item: item)
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
        .navigationDestination(isPresented: $showsDetailMenu) {
            DetailMenuView()
        }
    }
}

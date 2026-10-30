//
//  MenuItemRow.swift
//  Kimsereong-assignment
//
//  Created by 김세령 on 10/30/26.
//

import SwiftUI

struct MenuItemRow: View {
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

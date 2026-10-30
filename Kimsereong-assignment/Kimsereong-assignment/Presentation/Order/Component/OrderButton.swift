//
//  OrderButton.swift
//  Kimsereong-assignment
//
//  Created by 김세령 on 10/30/26.
//

import SwiftUI

struct OrderButton: View {
    let title: String
    
    var body: some View {
        Button {}
        label: {
            Text(title)
                .font(.SemiBold(14))
                .foregroundColor(.white)
                .frame(width: 284, height: 42)
        }
        .buttonStyle(.plain)
        .background(.starbucksGreen)
        .cornerRadius(26)
    }
}

//
//  PageTitle.swift
//  Kimsereong-assignment
//
//  Created by 김세령 on 10/29/26.
//

import SwiftUI

struct PageTitle: View {
    let title: String

    var body: some View {
        HStack(spacing: 0) {
            Text(title)
                .font(.SemiBold(28))

            Spacer(minLength: 0)
        }
        .padding(.leading, 18)
        .frame(height: 46)
    }
}

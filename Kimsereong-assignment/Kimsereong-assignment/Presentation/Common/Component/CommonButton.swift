//
//  CommonButton.swift
//  Kimsereong-assignment
//
//  Created by 김세령 on 10/13/26.
//

import SwiftUI

struct CommonButton: View {
    let title: String
    var isEnabled: Bool = true
    var isWhite: Bool = false
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.Medium(18))
                .foregroundStyle(textColor)
                .frame(maxWidth: .infinity)
                .frame(height: 56)
        }
        .buttonStyle(.plain)
        .disabled(!isEnabled)
        .background(backgroundColor)
        .cornerRadius(10)
    }

    private var textColor: Color {
        if !isEnabled { return .gray300 }
        if isWhite { return Color("starbucks_green") }
        return .white
    }

    private var backgroundColor: Color {
        if !isEnabled { return .gray200 }
        if isWhite { return .white }
        return Color("starbucks_green")
    }

}

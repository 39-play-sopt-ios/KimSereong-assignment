//
//  FavoriteButton.swift
//  Kimsereong-assignment
//
//  Created by 김세령 on 10/30/26.
//

import SwiftUI

struct FavoriteButton: View {
    let isFavorite: Bool
    let onTap: () -> Void

    var body: some View {
        Button(action: onTap) {
            Image(isFavorite ? .heartFill : .heartEmpty)
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 22)
        }
        .buttonStyle(.plain)
}

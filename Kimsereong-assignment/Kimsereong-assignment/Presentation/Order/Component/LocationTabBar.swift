//
//  LocationTabBar.swift
//  Kimsereong-assignment
//
//  Created by 김세령 on 10/29/26.
//

import SwiftUI

struct LocationTabBar: View {
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            locationTag
                .frame(width: 239)
            
            Spacer(minLength: 50)
            
            Image(.buyEmpty)
                .resizable()
                .scaledToFit()
                .frame(width: 42, height: 42)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 60)
        .padding(.horizontal, 14)
        .background(.darkbrown)
    }
    
    private var locationTag: some View {
        HStack(alignment: .center, spacing: 0) {
            Text("성수역")
                .font(.Medium(14))
                .foregroundStyle(.white)
            
            Spacer(minLength: 100)
            
            Image(.chevronBottomWhite)
                .resizable()
                .scaledToFit()
                .frame(width: 21, height: 21)
        }
        .padding(.bottom, 4)
        .overlay(alignment: .bottom) {
            Rectangle()
                .fill(.brown300)
                .frame(height: 1)
        }
    }
}

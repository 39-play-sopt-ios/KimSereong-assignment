//
//  DetailTopNavigationBar.swift
//  Kimsereong-assignment
//
//  Created by 김세령 on 10/30/26.
//

import SwiftUI

struct DetailTopNavigationBar: View {
    var onBack: () -> Void = {}
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            Button {
                onBack()
            } label: {
                Image(.chevronLeftWhite)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 21, height: 21)
                    .frame(width: 39, height: 39)
                    .background {
                        Circle()
                            .fill(.black.opacity(0.2))
                    }
                    .contentShape(Circle())
            }
            .buttonStyle(.plain)
            
            Spacer(minLength: 0)
            
            Button {
                
            } label: {
                Image(.shareWhite)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 16, height: 17)
                    .frame(width: 39, height: 39)
                    .background {
                        Circle()
                            .fill(.black.opacity(0.2))
                    }
            }
            .buttonStyle(.plain)
        }
        .frame(height: 67)
        .padding(.horizontal, 21)
    }
}

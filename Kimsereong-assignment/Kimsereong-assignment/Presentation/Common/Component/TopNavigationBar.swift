//
//  TopSearchBar.swift
//  Kimsereong-assignment
//
//  Created by 김세령 on 10/25/26.
//

import SwiftUI

struct TopNavigationBar: View {
    let type: NavigationType
    var onBack: () -> Void = {}
    
    enum NavigationType {
        case basic
        case searchOnly
    }
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            if type == .basic {
                Button {
                    onBack()
                } label: {
                    Image(.chevronLeftGrey)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 21, height: 21)
                }
                .buttonStyle(.plain)
            }
            
            Spacer(minLength: 0)
            
            Image(.searchGrey)
                .resizable()
                .scaledToFit()
                .frame(width: 21, height: 21)
        }
        .frame(height: 46)
        .padding(.horizontal, 21)
    }
}

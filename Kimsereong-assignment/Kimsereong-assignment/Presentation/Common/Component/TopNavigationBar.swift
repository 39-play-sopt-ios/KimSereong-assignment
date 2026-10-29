//
//  TopSearchBar.swift
//  Kimsereong-assignment
//
//  Created by 김세령 on 10/25/26.
//

import SwiftUI

struct TopNavigationBar: View {
    let type: NavigationType
    
    enum NavigationType {
        case basic
        case searchOnly
    }
            
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            if type == .basic {
                Image(.chevronLeftGrey)
                    .frame(width: 21, height: 21)
            }
            
            Spacer(minLength: 0)
            
            Image(.searchGrey)
        }
        .padding(.horizontal, 21)
    }
}

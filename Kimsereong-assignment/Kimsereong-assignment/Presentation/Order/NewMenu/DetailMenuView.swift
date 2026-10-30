//
//  DetailMenuView.swift
//  Kimsereong-assignment
//
//  Created by 김세령 on 10/30/26.
//

import SwiftUI

struct DetailMenuView: View {
    let item: NewMenuItemModel
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack(alignment: .top) {
            DetailMenuContent(item: item)
            
            .ignoresSafeArea(edges: .top)
            
            DetailTopNavigationBar {
                dismiss()
            }
        }
        .navigationBarBackButtonHidden(true)
        .toolbar(.hidden, for: .navigationBar)
    }
}

//
//  NewMenuView.swift
//  Kimsereong-assignment
//
//  Created by 김세령 on 10/29/26.
//

import SwiftUI

struct NewMenuView: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            TopNavigationBar(type: .basic) {
                dismiss()
            }
            
            PageTitle(title: "NEW")
            
            NewMenuList(items: NewMenuItemModel.newMenus)

            Spacer()
        }
        .navigationBarBackButtonHidden(true)
        .toolbar(.hidden, for: .navigationBar)
    }
}

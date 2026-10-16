//
//  NicknameSheetView.swift
//  Kimsereong-assignment
//
//  Created by 김세령 on 10/15/26.
//

import SwiftUI

struct NicknameSheetView: View {
    @Binding var nickname: String
    @Binding var isPresented: Bool

    var body: some View {
        VStack(spacing: 0) {
            Text("닉네임을 입력해주세요")
                .font(.SemiBold(18))
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 22)
                .padding(.top, 42)

            LoginTextFieldView(text: $nickname, type: .nickname)
                .padding(.horizontal, 31)
                .padding(.top, 18)

            Spacer(minLength: 16)

            CommonButton(
                title: "완료",
                isEnabled: !nickname.isEmpty,
                isWhite: true
            ) {
                isPresented = false
            }
            .padding(.horizontal, 22)
            .padding(.bottom, 13)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("darkgreen"))
        .overlay(alignment: .top) {
            Capsule()
                .fill(.gray300)
                .frame(width: 35, height: 5)
                .padding(.top, 5)
        }
    }
}

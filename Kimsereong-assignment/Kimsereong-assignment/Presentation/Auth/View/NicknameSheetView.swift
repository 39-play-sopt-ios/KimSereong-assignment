//
//  NicknameSheetView.swift
//  Kimsereong-assignment
//
//  Created by 김세령 on 10/15/26.
//

import SwiftUI

struct NicknameSheetView: View {
    @Binding var form: SignupForm
    @Binding var isPresented: Bool

    var body: some View {
        VStack(spacing: 0) {
            Text("닉네임을 입력해주세요")
                .font(.SemiBold(18))
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 22)
                .padding(.top, 42)

            LoginTextFieldView(type: .nickname, text: $form.nickname)
                .padding(.horizontal, 31)
                .padding(.top, 18)

            Spacer(minLength: 16)

            CTAButton(
                title: "완료",
                isEnabled: !form.nickname.isEmpty,
                isWhite: true
            ) {
                isPresented = false
            }
            .padding(.horizontal, 22)
            .padding(.bottom, 13)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("darkgreen"))
    }
}

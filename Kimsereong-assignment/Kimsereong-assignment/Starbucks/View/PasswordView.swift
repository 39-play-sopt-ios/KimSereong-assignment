//
//  PasswordView.swift
//  Kimsereong-assignment
//
//  Created by 김세령 on 10/15/26.
//

import SwiftUI

struct PasswordView: View {
    @Binding var form: SignupForm
    @State private var showsNickname = false
    let onSignup: () -> Void

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    Text("사용할 비밀번호를\n입력해주세요")
                        .font(.SemiBold(23))
                        .foregroundStyle(.black)

                    Text("\(form.email)로 가입중")
                        .font(.Medium(12))
                        .foregroundStyle(Color.gray300)
                        .padding(.top, 12)

                    LoginTextFieldView(text: $form.password, type: .password)
                        .padding(.top, 44)

                    HStack(spacing: 5) {
                        Image(form.isPasswordValid ? "enable-on" : "enable-offsvg")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 13, height: 13)
                            .accessibilityHidden(true)
                        Text("영문, 숫자, 특수문자 포함 10글자 이상")
                            .font(.Regular(12))
                            .foregroundStyle(form.isPasswordValid ? Color("starbucks_green") : Color.gray300)
                    }
                    .padding(.leading, 4)
                    .padding(.top, 13)

                    Button {
                        showsNickname = true
                    } label: {
                        Text(form.nickname.isEmpty ? "닉네임 설정" : form.nickname)
                            .font(.Regular(12))
                            .underline(form.nickname.isEmpty)
                            .foregroundStyle(form.nickname.isEmpty ? Color.gray300 : Color("gray100"))
                            .frame(maxWidth: .infinity, minHeight: 44)
                    }
                    .buttonStyle(.plain)
                    .padding(.top, 26)
                }
                .padding(.horizontal, 31)
                .padding(.top, 105)
                .padding(.bottom, 24)
            }

            CommonButton(title: "가입하기", isEnabled: form.isPasswordValid && !showsNickname) {
                onSignup()
            }
            .padding(.horizontal, 22)
            .padding(.bottom, 13)
            .opacity(showsNickname ? 0 : 1)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("background_white").ignoresSafeArea())
        .toolbar(.hidden, for: .navigationBar)
        .sheet(isPresented: $showsNickname) {
            NicknameSheetView(nickname: $form.nickname, isPresented: $showsNickname)
            .presentationDetents([.fraction(0.5)])
            .presentationDragIndicator(.hidden)
            .presentationBackground(Color("darkgreen"))
            .presentationCornerRadius(12)
        }
    }
}

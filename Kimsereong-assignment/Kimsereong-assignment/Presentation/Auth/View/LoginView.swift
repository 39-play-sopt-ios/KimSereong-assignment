//
//  LoginView.swift
//  Kimsereong-assignment
//
//  Created by 김세령 on 10/15/26.
//

import SwiftUI

struct LoginView: View {
    @State private var form: SignupForm
    @State private var showsPassword = false
    @State private var showsCompletion = false

    init(form: SignupForm = SignupForm()) {
        _form = State(initialValue: form)
    }

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 0) {
                ScrollView {
                    VStack(alignment: .leading, spacing: 0) {
                        Text("로그인/가입하려는\n이메일을 입력해주세요")
                            .font(.SemiBold(23))
                            .foregroundStyle(.black)

                        VStack(alignment: .leading, spacing: 5) {
                            Text("결제 등 중요 알림, 로그인, 비밀번호 찾기에 필요해요.")
                            Text("사용 중인 이메일을 입력해주세요")
                        }
                        .font(.Medium(12))
                        .foregroundStyle(Color("loginGuide"))
                        .padding(.top, 12)

                        LoginTextFieldView(type: .email, text: $form.email)
                            .padding(.top, 28)
                    }
                    .padding(.horizontal, 31)
                    .padding(.top, 105)
                    .padding(.bottom, 24)
                }

                CTAButton(title: "다음", isEnabled: form.isEmailValid) {
                    showsPassword = true
                }
                .padding(.horizontal, 22)
                .padding(.bottom, 13)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("background_white").ignoresSafeArea())
            .toolbar(.hidden, for: .navigationBar)
            .navigationDestination(isPresented: $showsPassword) {
                PasswordView(form: $form) {
                    showsCompletion = true
                }
                .navigationDestination(isPresented: $showsCompletion) {
                    SignupCompleteView(form: form) {
                        showsCompletion = false
                        showsPassword = false
                        form = SignupForm()
                    }
                }
            }
        }
        .tint(Color("starbucks_green"))
    }
}

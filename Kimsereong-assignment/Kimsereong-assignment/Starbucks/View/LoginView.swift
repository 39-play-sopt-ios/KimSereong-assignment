//
//  LoginView.swift
//  Kimsereong-assignment
//
//  Created by 김세령 on 10/15/26.
//

import SwiftUI

struct LoginView: View {
    @State private var form: SignupForm
    @State private var path: [Screen] = []

    private enum Screen: Hashable {
        case password
        case complete
    }

    init(form: SignupForm = SignupForm()) {
        _form = State(initialValue: form)
    }

    var body: some View {
        NavigationStack(path: $path) {
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

                        LoginTextFieldView(text: $form.email, type: .email)
                            .padding(.top, 28)
                    }
                    .padding(.horizontal, 31)
                    .padding(.top, 105)
                    .padding(.bottom, 24)
                }

                CommonButton(title: "다음", isEnabled: form.isEmailValid) {
                    path.append(.password)
                }
                .padding(.horizontal, 22)
                .padding(.bottom, 13)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("background_white").ignoresSafeArea())
            .toolbar(.hidden, for: .navigationBar)
            .navigationDestination(for: Screen.self) { screen in
                switch screen {
                case .password:
                    PasswordView(form: $form) {
                        path.append(.complete)
                    }
                case .complete:
                    SignupCompleteView(nickname: form.nickname) {
                        path.removeAll()
                        form = SignupForm()
                    }
                }
            }
        }
        .tint(Color("starbucks_green"))
    }
}

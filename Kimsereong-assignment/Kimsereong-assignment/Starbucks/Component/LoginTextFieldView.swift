//
//  LoginTextFieldView.swift
//  Kimsereong-assignment
//
//  Created by 김세령 on 10/12/26.
//

import SwiftUI

struct LoginTextFieldView: View {
    @Binding var text: String
    @State private var isPasswordVisible: Bool = false
    let type: LoginTextFieldType

    enum LoginTextFieldType {
        case email
        case password
        case nickname
    }

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(.white)
                .strokeBorder(borderColor, lineWidth: 1)

            HStack(spacing: 4) {
                Group {
                    if type == .password && !isPasswordVisible {
                        SecureField(placeholder, text: $text, prompt: prompt)
                    } else {
                        TextField(placeholder, text: $text, prompt: prompt)
                    }
                }
                .tint(.black)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.Regular(12))
                .foregroundStyle(.black)
                .textInputAutocapitalization(.never)
                .autocorrectionDisabled()
                .accessibilityLabel(type == .email ? "이메일" : placeholder)

                if !text.isEmpty && type != .nickname {
                    clearButton

                    switch type {
                    case .email:
                        Image(text.isValidEmail ? "check-on" : "check-off")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                    case .password:
                        visibilityButton
                    case .nickname:
                        EmptyView()
                    }
                }
            }
            .padding(.horizontal, 15)
        }
        .frame(height: 47)
    }

    private var placeholder: String {
        switch type {
        case .email:
            return "email@address.com"
        case .password:
            return "비밀번호 입력"
        case .nickname:
            return "닉네임 입력"
        }
    }

    private var prompt: Text {
        Text(placeholder).foregroundStyle(Color("gray250"))
    }

    private var borderColor: Color {
        if text.isEmpty { return .white }
        switch type {
        case .email:
            return .black
        case .password:
            return Color("textFieldBorder")
        case .nickname:
            return .white
        }
    }

    private var clearButton: some View {
        Button {
            text = ""
        } label: {
            Image(.closeSquare)
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
        }
        .buttonStyle(.plain)
    }

    private var visibilityButton: some View {
        Button {
            isPasswordVisible.toggle()
        } label: {
            Image(isPasswordVisible ? "eye-slash" : "eye")
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
        }
        .buttonStyle(.plain)
    }
}

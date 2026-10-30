//
//  SignupCompleteView.swift
//  Kimsereong-assignment
//
//  Created by 김세령 on 10/15/26.
//

import SwiftUI

struct SignupCompleteView: View {
    let form: SignupForm
    let onMain: () -> Void

    var body: some View {
        VStack(spacing: 0) {
            ScrollView {
                VStack(spacing: 0) {
                    Image("starbucks_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 262, height: 201)
                        .padding(.top, 65)
                        .accessibilityLabel("스타벅스")

                    Text("\(form.nickname.isEmpty ? "회원" : form.nickname)님\n가입을 환영합니다!")
                        .font(.SemiBold(23))
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity)
                        .padding(.top, 93)
                }
                .frame(maxWidth: .infinity)
            }

            CTAButton(title: "메인으로", isWhite: true) {
                onMain()
            }
            .padding(.horizontal, 22)
            .padding(.bottom, 13)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("darkgreen").ignoresSafeArea())
        .toolbar(.hidden, for: .navigationBar)
    }
}

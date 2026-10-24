//
//  SignupForm.swift
//  Kimsereong-assignment
//
//  Created by 김세령 on 10/16/26.
//

struct SignupForm {
    var email = ""
    var password = ""
    var nickname = ""

    var isEmailValid: Bool { email.isValidEmail }
    var isPasswordValid: Bool { password.isValidPassword }
}

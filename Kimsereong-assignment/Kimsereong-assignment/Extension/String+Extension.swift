//
//  String+Extension.swift
//  Kimsereong-assignment
//
//  Created by 김세령 on 10/12/26.
//

import SwiftUI

extension String {
    var isValidEmail: Bool {
        let pattern = #"^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$"#
        return range(of: pattern, options: .regularExpression) != nil
    }

    var isValidPassword: Bool {
        let pattern = #"\A(?=.*[A-Za-z])(?=.*[0-9])(?=.*[^A-Za-z0-9\s])\S{10,}\z"#
        return range(of: pattern, options: .regularExpression) != nil
    }
}

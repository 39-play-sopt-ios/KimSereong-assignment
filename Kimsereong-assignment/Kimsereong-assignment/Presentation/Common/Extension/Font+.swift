//
//  Font+.swift
//  Kimsereong-assignment
//
//  Created by 김세령 on 10/12/26.
//

import SwiftUI

extension Font {
    static func Regular(_ size: CGFloat) -> Font {
        .custom("Pretendard-Regular", size: size)
    }

    static func Medium(_ size: CGFloat) -> Font {
        .custom("Pretendard-Medium", size: size)
    }
    
    static func SemiBold(_ size: CGFloat) -> Font {
        .custom("Pretendard-SemiBold", size: size)
    }

    static func Bold(_ size: CGFloat) -> Font {
        .custom("Pretendard-Bold", size: size)
    }
    
    static func ExtraBold(_ size: CGFloat) -> Font {
        .custom("Pretendard-ExtraBold", size: size)
    }
}

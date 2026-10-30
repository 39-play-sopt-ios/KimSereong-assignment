//
//  NewMenuItemModel.swift
//  Kimsereong-assignment
//
//  Created by 김세령 on 10/30/26.
//

import SwiftUI

struct NewMenuItemModel: Identifiable {
    let id: String
    let name: String
    let englishName: String
    let price: String
    let image: ImageResource
}

extension NewMenuItemModel {
    static let newMenus: [NewMenuItemModel] = [
        NewMenuItemModel(id: "sweet-potato-latte-iced", name: "아이스 카스텔라 고구마 라떼", englishName: "Iced Castella Sweet Potato Milk", price: "6,900원", image: .new1),
        NewMenuItemModel(id: "matcha-glazed-tea-latte-iced", name: "아이스 말차 글레이즈드 티 라떼", englishName: "Iced Malcha Glazed Tea Latte", price: "6,700원", image: .new2),
        NewMenuItemModel(id: "grapefruit-honey-aerocano", name: "스타벅스 자몽 허니 에어로카노", englishName: "Starbucks GrapeFruit Honey Aerocano", price: "6,100원", image: .new3)
    ]
}

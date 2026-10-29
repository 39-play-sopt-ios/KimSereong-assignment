//
//  MenuCategory.swift
//  Kimsereong-assignment
//
//  Created by 김세령 on 10/29/26.
//

import SwiftUI

struct MenuCategoryModel: Identifiable {
    let id: String
    let title: String
    let image: ImageResource
}

extension MenuCategoryModel {
    static let menus : [MenuCategoryModel] = [
        MenuCategoryModel(id: "new", title: "NEW", image: .new),
        MenuCategoryModel(id: "recommended", title: "추천", image: .recommend),
        MenuCategoryModel(id: "coldbrew", title: "콜드 브루", image: .coldbrew),
        MenuCategoryModel(id: "blond", title: "블론드", image: .blond),
        MenuCategoryModel(id: "espresso", title: "에스프레소", image: .espresso)
    ]
}

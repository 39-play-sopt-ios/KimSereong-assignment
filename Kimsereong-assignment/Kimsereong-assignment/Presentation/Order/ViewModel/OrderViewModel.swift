//
//  OrderViewModel.swift
//  Kimsereong-assignment
//
//  Created by 김세령 on 10/29/26.
//

import SwiftUI
import Observation

@Observable
final class OrderViewModel {
    let menus = NewMenuItemModel.newMenus
    
    private(set) var favoriteIDs: Set<String> = []
    
    var favoriteMenus: [NewMenuItemModel] {
        menus.filter { menu in favoriteIDs.contains(menu.id) }
    }
    func menu(id: String) -> NewMenuItemModel? {
        menus.first { $0.id == id }
    }

    func isFavorite(id: String) -> Bool {
        favoriteIDs.contains(id)
    }
    
    func toggleFavorite(id: String) {
        if favoriteIDs.contains(id) {
            favoriteIDs.remove(id)
        } else {
            favoriteIDs.insert(id)
        }
    }
}

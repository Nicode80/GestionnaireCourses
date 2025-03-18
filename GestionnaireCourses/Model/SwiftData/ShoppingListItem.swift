//
//  ShoppingListItem.swift
//  GestionnaireCourses
//
//  Created by Nicolas Constantin on 17/03/2025.
//

import SwiftData
import Foundation

@Model
final class ShoppingListItem {
    var name: String
    var quantity: Int
    var unit: String?
    var checked: Bool = false

    init(name: String, quantity: Int, unit: String? = nil, checked: Bool = false) {
        self.name = name
        self.quantity = quantity
        self.unit = unit
        self.checked = checked
    }
}

//
//  Models.swift
//  FoodApp
//
//  Created by Дмитрий on 11.08.2024.
//

import Foundation
import SwiftUI

struct Product {
    var price: Int
    var image: String
    var name: String
    var country: String?
    var badge: Bool
    var sale: Bool
    var review: Int
    var rating: Float
    var salePercent: Int
    var badgeName: String
    var colorBadge: Color
}


enum Qty: String, CaseIterable, Identifiable {
    case sh = "Шт"
    case kg = "Кг"
    var id: Self { self }
}

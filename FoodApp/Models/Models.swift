//
//  Models.swift
//  FoodApp
//
//  Created by Дмитрий on 11.08.2024.
//

import Foundation


struct Product {
    var image: String
    var name: String
    var country: String?
    var badge: Bool
    var sale: Bool
    var review: Int
    var rating: Float
    var salePercent: Int
}


enum Qty: String, CaseIterable, Identifiable {
    case sh = "Шт"
    case kg = "Кг"
    var id: Self { self }
}

//
//  ListView.swift
//  FoodApp
//
//  Created by Дмитрий on 08.08.2024.
//

import SwiftUI

struct ListView: View {
    @State private var productForList: Product = .init(price: Int.random(in: 100...3000), image: "Image", name: "Огурцы тепличные cадово-огородные", badge: true, sale: true, review: 19, rating: 4.1, salePercent: 25, badgeName: "Удар по ценам", colorBadge: .red)
    var body: some View {
        ScrollView {
            ForEach(0..<15) { _ in
                CardViewForList(product: $productForList)
            }
        }
    }
}

#Preview {
    ListView()
}

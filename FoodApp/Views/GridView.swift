//
//  GridView.swift
//  FoodApp
//
//  Created by Дмитрий on 08.08.2024.
//

import SwiftUI

struct GridView: View {
    @State private var productForGrid: Product = .init(price: Int.random(in: 100...3000), image: "ForGrid", name: "сыр Ламбер 500/0 230г", badge: true, sale: false, review: 0, rating: 4.1, salePercent: 25, badgeName: "Удар по ценам", colorBadge: .red)
    var body: some View {
        ScrollView {
            LazyVGrid(columns: Array(repeating: .init(.flexible()), count: 2)) {
                ForEach(0..<30) { index in
                    CardViewForGrid(product: $productForGrid)
                }
            }
        }
    }
}

#Preview {
    GridView()
}

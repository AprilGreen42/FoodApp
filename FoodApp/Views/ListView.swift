//
//  ListView.swift
//  FoodApp
//
//  Created by Дмитрий on 08.08.2024.
//

import SwiftUI

struct ListView: View {
    @State private var productForList: Product = .init(image: "Image", name: "Огурцы тепличные cадово-огородные", badge: true, sale: true, review: 19, rating: 4.1, salePercent: 25)
    var body: some View {
        ScrollView {
            CardViewForList(product: $productForList)
            CardViewForList(product: $productForList, badgefirst: "Новинка")
        }
    }
}

#Preview {
    ListView()
}

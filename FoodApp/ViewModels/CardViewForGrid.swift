//
//  CardViewForGrid.swift
//  FoodApp
//
//  Created by Дмитрий on 11.08.2024.
//

import SwiftUI

struct CardViewForGrid: View {
    @Binding var product: Product
    var price: Int = 0
    @State var isAdded: Bool = false
    @State var isPressedHeart: Bool = false
    @State var qty: Qty = .kg
    var badgefirst: String = "Удар по ценам"
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 168, height: 278)
                .foregroundStyle(.white)
                .shadow(radius: 4)
            VStack(alignment: .leading) {
                ZStack {
                    Image(product.image)
                        .resizable()
                        .frame(width: 168, height: 168)
                        .padding(.horizontal)
                        .padding(.top)
                        .clipShape(RoundedRectangle(cornerRadius: 100))
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: 100, height: 18)
                            .foregroundStyle(.red)
                        Text(product.badge ? badgefirst : "")
                            .font(.system(size: 12))
                            .foregroundStyle(.white)
                    }
                    .offset(x: -30, y: -73)
                    Text("\(product.salePercent) %")
                        .font(.system(size: 18))
                        .foregroundStyle(.red)
                        .bold()
                        .offset(x: 55, y: 85)

                    ActionListButtonsView(isPressedHeart: $isPressedHeart)
                        .offset(x: 60, y: -40)
                }
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundStyle(.yellow)
                    Text("\(product.rating.formatted())")
                }
                .offset(x: -10, y: -20)
                .padding(.horizontal, 30)
                Text(product.name)
                    .font(.system(size: 12))
                    .padding(.horizontal, 25)
                    .offset(x: 0, y: -15)
                if isAdded {
                    AddCounterView(qty: $qty, widthForCapsule: 160, heightForCapsule: 36, widthForPicker: 158, heightForPicker: 28, offsetForButton: 25)
                        .offset(x: 20, y: -15)
                } else {
                    CounterOriginView(isPresent: $isAdded, xOffset: 140, xOffsetForPrice: 25, yOffsetForPrice: 0, price: 322)
                        .offset(x: 0, y: 20)
                }
            }
        }
    }
}

#Preview {
    CardViewForGrid(product: .constant(.init(image: "ForGrid", name: "сыр Ламбер 500/0 230г", badge: true, sale: false, review: 19, rating: 4.1, salePercent: 25)))
}

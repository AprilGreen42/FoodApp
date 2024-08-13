//
//  CardViewForList.swift
//  FoodApp
//
//  Created by Дмитрий on 11.08.2024.
//

import SwiftUI

struct CardViewForList: View {


    @State private var isAdded: Bool = false
    @State private var qty: Qty = .sh
    @Binding var product: Product
    var badgefirst: String = "Удар по ценам"
    @State private var isPressedHeart: Bool = false
    var body: some View {
        VStack {
            VStack {
                HStack {
                    ZStack {
                        Image(product.image)
                            .resizable()
                            .frame(width: 144, height: 144)
                        ZStack {
                            RoundedRectangle(cornerRadius: 30)
                                .frame(width: 100, height: 18)
                                .foregroundStyle(.red)
                            Text(product.badge ? badgefirst : "")
                                .font(.system(size: 12))
                                .foregroundStyle(.white)
                        }
                        .offset(x: -30, y: -70)
                        Text("\(product.salePercent) %")
                            .font(.system(size: 18))
                            .foregroundStyle(.red)
                            .bold()
                            .offset(x: 40, y: 65)
                    }
                    VStack(alignment: .leading) {
                        HStack {
                            VStack(alignment: .leading) {
                                HStack {
                                    Image(systemName: "star.fill")
                                        .foregroundStyle(.yellow)
                                    Text("\(product.rating.formatted()) | \(product.review) отзывов")
                                }
//                                .padding(.bottom)
                                Text(product.name)
                                Text("Франция 🇫🇷")
                            }
                            ActionListButtonsView(isPressedHeart: $isPressedHeart)
                        }
                        
                        if isAdded {
                            AddCounterView(qty: $qty)
                        }
                        else {
                            CounterOriginView(isPresent: $isAdded, xOffset: 165, yOffset: -5, yOffsetForPrice: 30, price: 131231233)
                        }
                        
                    }
                }
            }
            Rectangle()
                .frame(width: .infinity, height: 1)
                .foregroundStyle(.gray)
                .edgesIgnoringSafeArea(.horizontal)
        }
    }
}

#Preview {
    CardViewForList(product: .constant(.init(image: "Image", name: "Огурцы тепличные cадово-огородные", badge: true, sale: true, review: 19, rating: 4.1, salePercent: 25)))
}

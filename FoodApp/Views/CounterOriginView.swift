//
//  CounterOriginView.swift
//  FoodApp
//
//  Created by Дмитрий on 12.08.2024.
//

import SwiftUI

struct CounterOriginView: View {
    @Binding var isPresent: Bool
    var xOffset: CGFloat = 165
    var yOffset: CGFloat = -35
    var xOffsetForPrice: CGFloat = 0
    var yOffsetForPrice: CGFloat = 0

    
    var price: Int = 322
    var body: some View {
        HStack {
            Text("\(price)")
            Image("PerAmountIcon")
        }
        .offset(x: xOffsetForPrice, y: yOffsetForPrice)
        Button(action: {
            isPresent.toggle()
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 36, height: 36)
                    .foregroundColor(.green)
                Image("Cart")
                    .frame(width: 16, height: 16)
                
            }
        })
        .offset(x: xOffset, y: yOffset)
    }
}

#Preview {
    CounterOriginView(isPresent: .constant(true))
}

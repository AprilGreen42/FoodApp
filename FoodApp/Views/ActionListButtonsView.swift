//
//  ActionListButtonsView.swift
//  FoodApp
//
//  Created by Дмитрий on 12.08.2024.
//

import SwiftUI

struct ActionListButtonsView: View {
    @Binding var isPressedHeart: Bool
    var body: some View {
        ZStack {
            
            Capsule()
                .frame(width: 32, height: 64)
                .foregroundStyle(.white)
                .opacity(0.5)
            
            VStack {
                
                Button(action: {
                    
                }, label: {
                    Image("FirstIcon")
                })
                .padding(.vertical, 15)
                
                Button(action: {
                    isPressedHeart.toggle()
                }, label: {
                    Image(systemName: isPressedHeart ? "heart.fill" : "heart")
                        .tint(isPressedHeart ? .green : .gray)
                })
                .padding(.bottom, 15)
            }
        }
    }
}

#Preview {
    ActionListButtonsView(isPressedHeart: .constant(true))
}

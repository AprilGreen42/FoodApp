//
//  BadgeView.swift
//  FoodApp
//
//  Created by Дмитрий on 14.08.2024.
//

import SwiftUI

struct BadgeView: View {
    var badge: Bool = true
    var colorOfBudge: Color = .red
    var badgeName: String = ""
    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 100, height: 18)
                .foregroundStyle(colorOfBudge)
            Text(badge ? badgeName : "")
                .font(.system(size: 12))
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    BadgeView()
}

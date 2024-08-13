//
//  AddCounterView.swift
//  FoodApp
//
//  Created by Дмитрий on 13.08.2024.
//

import SwiftUI

struct AddCounterView: View {
    
    @Binding var qty: Qty
    var widthForCapsule: CGFloat = 199
    var heightForCapsule: CGFloat = 44
    var widthForPicker: CGFloat = 199
    var heightForPicker: CGFloat = 36
    var offsetForButton: CGFloat = 40
    var body: some View {
        VStack {
            
            Picker("", selection: $qty) {
                ForEach(Qty.allCases) { q in
                    Text(q.rawValue)
                }
            }
            .frame(width: widthForPicker, height: heightForPicker)
            .pickerStyle(.segmented)
            
            ZStack {
                
                Capsule()
                    .frame(width: widthForCapsule, height: heightForCapsule)
                    .foregroundStyle(.green)
                
                HStack {
                    Button(action: {
                        
                    }, label: {
                        Text("-")
                            .font(.system(size: 36))
                            .foregroundStyle(.white)
                    })
                    .offset(x: -offsetForButton, y: -3)
                    
                    VStack {
                        Text("0.1")
                            .font(.system(size: 16))
                            .foregroundStyle(.white)
                        Text("~5,92P")
                            .foregroundStyle(.white)
                            .font(.system(size: 12))
                    }
                    
                    Button(action: {
                        
                    }, label: {
                        Text("+")
                            .font(.system(size: 36))
                            .foregroundStyle(.white)
                    })
                    .offset(x: offsetForButton, y: -3)
                }
            }
            .offset(x: 0, y: -10)
        }
    }
}

#Preview {
    AddCounterView(qty: .constant(.kg))
}

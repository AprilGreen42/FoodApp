//
//  ContentView.swift
//  FoodApp
//
//  Created by Дмитрий on 08.08.2024.
//

import SwiftUI

struct ContentView: View {

    @State private var sees: Bool = false
    @State private var swifthButton: String = ""
    var body: some View {
        NavigationStack {
        VStack {
            if !sees {
               GridView()
            }
            else {
               ListView()
            }
        }
            .toolbar {
                ToolbarItem(placement: .topBarLeading, content: {
                    Button(action: {
                        sees.toggle()
                    }, label: {
                        Image(systemName: sees ? "rectangle.grid.2x2" : "rectangle.grid.1x2")
                    })
                })
            }
        }
    }
}

#Preview {
    ContentView()
}

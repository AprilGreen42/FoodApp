//
//  ContentView.swift
//  FoodApp
//
//  Created by Дмитрий on 08.08.2024.
//

import SwiftUI

struct ContentView: View {

    @State private var grid: Bool = false
    @State private var swifthButton: String = ""
    var body: some View {
        NavigationStack {
        VStack {
            if !grid {
               GridView()
            }
            else {
               ListView()
            }
        }
            .toolbar {
                ToolbarItem(placement: .topBarLeading, content: {
                    Button(action: {
                        grid.toggle()
                    }, label: {
                        Image(systemName: grid ? "rectangle.grid.2x2" : "rectangle.grid.1x2")
                    })
                })
            }
        }
    }
}

#Preview {
    ContentView()
}

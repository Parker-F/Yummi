//
//  ContentView.swift
//  Yummi
//
//  Created by Parker, Fred (DMT) on 23/01/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var kitchen = Kitchen()
    @State private var selectedFood: Int = 0 {
        didSet {
            if selectedFood >= kitchen.ingredients.count {
                selectedFood = 0
                
    var body: some View {
        VStack {
            Text("\(kitchen.ingredients[selectedFood].displayInfo())")
            Button("Random Food", action: {
                selectedFood += 1
            })
                   }
                   }
                   }
                   }
                   }
}


#Preview {
    ContentView()
}

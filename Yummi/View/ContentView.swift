//
//  ContentView.swift
//  Yummi
//
//  Created by Parker, Fred (DMT) on 22/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingIngredientsView: Bool = true
    var body: some View {
        VStack {
            Toggle("Showing Ingredients", isOn: $isShowingIngredientsView)
                .padding(.vertical,5)
                .padding(.horizontal,20)
            Spacer()
            if isShowingIngredientsView{
                IngredientsView()
            } else {
                RecipesView(recipes: Recipe.recipes)
            }
        }
    }
}

#Preview {
    ContentView()
}

//
//  RecipesView.swift
//  Yummi
//
//  Created by Parker, Fred (DMT) on 06/02/2024.
//

import Foundation
import SwiftUI

struct RecipesView: View {
    var recipes: [Recipe]
    @State private var selectedRecipe: Int = 0 {
        didSet {
            if selectedRecipe >= recipes.count {
                selectedRecipe = 0
            }
        }
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("\(recipes[selectedRecipe].displayInfo())")
            Button("Next Recipe", action: {
                selectedRecipe += 1
            })
        }
    }
}

#Preview {
    RecipesView(recipes: Recipe.recipes)
}

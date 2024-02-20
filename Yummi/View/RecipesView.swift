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
    
    var body: some View {
        List {
            ForEach(recipes) { recipe in
                Text(recipe)
            }

            })
        }
    }

#Preview {
    RecipesView(recipes: Recipe.recipes)
}

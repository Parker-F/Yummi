//
//  ContentView.swift
//  Yummi
//
//  Created by Parker, Fred (DMT) on 23/01/2024.
//
import Foundation
import SwiftUI

struct ContentView: View {
    @State var inputName = ""
    @State var inputQuantity = 0
    @State var inputUnit = ""
    @State var inputCategory = ""
    @State var inputExpiryDate = ""
    
    @State var ingredients = 
        [Ingredient(name: "Cheese", quantity: 3, unit: "kilograms", category: "Dairy", expiryDate: "Never"),
           Ingredient(name: "Beans", quantity: 32, unit: "cans", category: "Canned Food", expiryDate: "Never"),
           Ingredient(name: "Bread", quantity: 2, unit: "Loaves", category: "Bakery", expiryDate: "2024/02/01"),
           Ingredient(name: "Pineapple Juice", quantity: 4, unit: "Litres", category: "Juice", expiryDate: "2024/01/31"),
            Ingredient(name: "Mince", quantity: 500, unit: "grams", category: "Meat", expiryDate: "2024/02/05"),
         Ingredient(name: "Onion", quantity: 3, unit: "pieces", category: "Vegetable", expiryDate: "2024/02/07"),
         Ingredient(name: "Garlic", quantity: 1, unit: "bulb", category: "Vegetable", expiryDate: "2024/02/10"),
         Ingredient(name: "Tomato Sauce", quantity: 500, unit: "milliliters", category: "Condiment", expiryDate: "2024/03/15"),
         Ingredient(name: "Spaghetti", quantity: 400, unit: "grams", category: "Pasta", expiryDate: "2024/04/20"),
         Ingredient(name: "Olive Oil", quantity: 250, unit: "milliliters", category: "Cooking Oil", expiryDate: "2024/05/30"),
         Ingredient(name: "Salt", quantity: 250, unit: "grams", category: "Seasoning", expiryDate: "2025/01/01"),
         Ingredient(name: "Pepper", quantity: 100, unit: "grams", category: "Seasoning", expiryDate: "2025/01/01")
        ]



    @State private var selectedFood: Int = 0 {
        didSet {
            if selectedFood >= ingredients.count {
                selectedFood = 0
            }
        }
    }
    var body: some View {
        Form{
            Section {
                VStack(alignment: .leading, spacing: 20) {
                    Text("\(ingredients[selectedFood].displayInfo())")
                    Button("Next ingredient", action: {
                        selectedFood += 1
                    })
                }
            }
            Section {
                    Text("Enter a NEW Ingredient")
                    TextField("Name", text: $inputName)
                    Stepper("Quantity: \(inputQuantity)", value: $inputQuantity, in: 0...Int.max)
                    TextField("Unit", text: $inputUnit)
                    TextField("Category", text: $inputCategory)
                    TextField("Expiry Date", text: $inputExpiryDate)
                    Button("Add Ingredient") {
                        let newIngredient = Ingredient(name: inputName, quantity: inputQuantity, unit: inputUnit, category: inputCategory, expiryDate: inputExpiryDate)
                        ingredients.append(newIngredient)
                        selectedFood = ingredients.count - 1
                        inputName = ""
                        inputQuantity = 0
                        inputUnit = ""
                        inputCategory = ""
                        inputExpiryDate = ""
                    }
            }
        }
    }
}

#Preview {
    ContentView()
}

//
//  ContentView.swift
//  Yummi
//
//  Created by Parker, Fred (DMT) on 23/01/2024.
//
import Foundation
import SwiftUI

struct IngredientsView: View {
    @State var inputName = ""
    @State var inputQuantity = 0
    @State var inputUnit = ""
    @State var inputCategory = ""
    @State var inputExpiryDate = Date()
    
    @State var ingredients = 
        [Ingredient(name: "Eggs", quantity: 12, unit: "pieces", category: "Dairy", expiryDate: "2024/02/15"),
         Ingredient(name: "Chicken Breast", quantity: 700, unit: "grams", category: "Meat", expiryDate: "2024/02/10"),
         Ingredient(name: "Broccoli", quantity: 500, unit: "grams", category: "Vegetable", expiryDate: "2024/02/12"),
         Ingredient(name: "Rice", quantity: 1, unit: "kilogram", category: "Grains", expiryDate: "2024/03/01"),
         Ingredient(name: "Milk", quantity: 2, unit: "liters", category: "Dairy", expiryDate: "2024/02/20"),
         Ingredient(name: "Lemon", quantity: 3, unit: "pieces", category: "Fruit", expiryDate: "2024/02/15"),
         Ingredient(name: "Butter", quantity: 250, unit: "grams", category: "Dairy", expiryDate: "2024/03/05"),
         Ingredient(name: "Green Beans", quantity: 300, unit: "grams", category: "Vegetable", expiryDate: "2024/02/08"),
         Ingredient(name: "Soy Sauce", quantity: 150, unit: "milliliters", category: "Condiment", expiryDate: "2024/04/01"),
         Ingredient(name: "Pasta Sauce", quantity: 350, unit: "grams", category: "Condiment", expiryDate: "2024/03/25"),
         Ingredient(name: "Cucumber", quantity: 2, unit: "pieces", category: "Vegetable", expiryDate: "2024/02/10"),
         Ingredient(name: "Cheddar Cheese", quantity: 250, unit: "grams", category: "Dairy", expiryDate: "2024/03/10"),
         Ingredient(name: "Spinach", quantity: 300, unit: "grams", category: "Vegetable", expiryDate: "2024/02/15"),
         Ingredient(name: "Salmon", quantity: 800, unit: "grams", category: "Fish", expiryDate: "2024/02/12"),
         Ingredient(name: "Potatoes", quantity: 1, unit: "kilogram", category: "Vegetable", expiryDate: "2024/02/20"),
         Ingredient(name: "Yogurt", quantity: 500, unit: "grams", category: "Dairy", expiryDate: "2024/03/01"),
         Ingredient(name: "Ground Turmeric", quantity: 50, unit: "grams", category: "Spice", expiryDate: "2024/03/15"),
         Ingredient(name: "Honey", quantity: 300, unit: "milliliters", category: "Sweetener", expiryDate: "2024/03/10"),
         Ingredient(name: "Ground Beef", quantity: 600, unit: "grams", category: "Meat", expiryDate: "2024/02/10"),
         Ingredient(name: "Bell Peppers", quantity: 4, unit: "pieces", category: "Vegetable", expiryDate: "2024/02/08"),
         Ingredient(name: "Quinoa", quantity: 500, unit: "grams", category: "Grains", expiryDate: "2024/03/05"),
         Ingredient(name: "Almond Milk", quantity: 1, unit: "liter", category: "Non-Dairy Milk", expiryDate: "2024/02/25"),
         Ingredient(name: "Avocado", quantity: 2, unit: "pieces", category: "Fruit", expiryDate: "2024/02/12"),
         Ingredient(name: "Ground Cinnamon", quantity: 30, unit: "grams", category: "Spice", expiryDate: "2024/04/01"),
         Ingredient(name: "Canned Tuna", quantity: 3, unit: "cans", category: "Canned Food", expiryDate: "Never"),
         Ingredient(name: "Sweet Potatoes", quantity: 700, unit: "grams", category: "Vegetable", expiryDate: "2024/02/18"),
         Ingredient(name: "Blueberries", quantity: 250, unit: "grams", category: "Fruit", expiryDate: "2024/02/15"),
         Ingredient(name: "Whole Wheat Flour", quantity: 400, unit: "grams", category: "Flour", expiryDate: "2024/03/10"),
         Ingredient(name: "Green Tea Bags", quantity: 20, unit: "pieces", category: "Beverage", expiryDate: "2024/05/01"),
         Ingredient(name: "Ground Paprika", quantity: 40, unit: "grams", category: "Spice", expiryDate: "2024/03/20"),
         Ingredient(name: "Cashews", quantity: 200, unit: "grams", category: "Nuts", expiryDate: "2024/03/15"),
         Ingredient(name: "Orange Juice", quantity: 500, unit: "milliliters", category: "Juice", expiryDate: "2024/02/28"),
        ]



    @State private var selectedFood: Int = 0 {
        didSet {
            if selectedFood >= ingredients.count {
                selectedFood = 0
            }
        }
    }
    var body: some View {
        Form {
            Section {
                VStack(alignment: .leading, spacing: 20) {
                    Text("\(ingredients[selectedFood].displayInfo())")
                    Button("Next ingredient", action: {
                        selectedFood += 1
                    })
                }
            }
            Section(header: Text("Enter a new ingredient")) {
                TextField("Name", text: $inputName)
                Stepper("Quantity: \(inputQuantity)", value: $inputQuantity, in: 0...Int.max)
                TextField("Unit", text: $inputUnit)
                TextField("Category", text: $inputCategory)
                DatePicker("Expiry Date", selection: $inputExpiryDate)
                Button("Add Ingredient") {
                    let newIngredient = Ingredient(name: inputName, quantity: inputQuantity, unit: inputUnit, category: inputCategory, expiryDate: inputExpiryDate)
                    ingredients.append(newIngredient)
                    selectedFood = ingredients.count - 1
                    inputName = ""
                    inputQuantity = 0
                    inputUnit = ""
                    inputCategory = ""
                    inputExpiryDate = Date()
                }
            }
        }
    }
}
#Preview {
    IngredientsView()
}

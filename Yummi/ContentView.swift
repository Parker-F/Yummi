//
//  ContentView.swift
//  Yummi
//
//  Created by Parker, Fred (DMT) on 23/01/2024.
//
import Foundation
import SwiftUI

struct ContentView: View {
    @State private var kitchen = Kitchen()
    @State var inputName = ""
    @State var inputQuantity = 0
    @State var inputUnit = ""
    @State var inputCategory = ""
    @State var inputExpiryDate = ""
    
    @State var ingredients = [Ingredient(name: "Cheese", quantity: 3, unit: "kilograms", category: "Dairy", expiryDate: "Never"),
                       Ingredient(name: "Beans", quantity: 32, unit: "cans", category: "Canned Food", expiryDate: "Never"),
                       Ingredient(name: "Bread", quantity: 2, unit: "Loaves", category: "Bakery", expiryDate: "1/2/2023"),
                       Ingredient(name: "Pineapple Juice", quantity: 4, unit: "Litres", category: "Juice", expiryDate: "3/2/2023")]



    @State private var selectedFood: Int = 0 {
        didSet {
            if selectedFood >= ingredients.count {
                selectedFood = 0
            }
        }
    }
    var body: some View {
        Form {
            Section{
                Text("DOESN'T WORK")
            }
            Section{
                VStack(alignment: .leading, spacing: 20) {
                    Text("\(ingredients[selectedFood].displayInfo())")
                    Button("Random Food", action: {
                        selectedFood += 1
                    })
                    
                }
            }
            Section {
                VStack{
                    Text("Enter a NEW Ingredient")
                    TextField("Name", text: $inputName)
                    Stepper("Quantity: \(inputQuantity)", value: $inputQuantity, in: 0...Int.max)
                    TextField("Unit", text: $inputUnit)
                    TextField("Category", text: $inputCategory)
                    TextField("Expiry Date", text: $inputExpiryDate)
                    Button("Enter") {
                        let newIngredient = Ingredient(name: inputName, quantity: inputQuantity, unit: inputUnit, category: inputCategory, expiryDate: inputExpiryDate)
                        ingredients.append(newIngredient)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

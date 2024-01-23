//
//  Ingredients.swift
//  Yummi
//
//  Created by Parker, Fred (DMT) on 23/01/2024.
//

import Foundation

struct Ingredient {
    let name: String
    var quantity: Int
    let unit: String
    let category: String
    let expiryDate: String
    
    func displayInfo() -> String {
        return (
        """
        Name: \(name)
        Quantity: \(quantity)
        Unit: \(unit)
        Category: \(category)
        Expiry Date: \(expiryDate)
""")
    }
}
struct Kitchen {
    var ingredients = [Ingredient(name: "Cheese", quantity: 3, unit: "kilograms", category: "Dairy", expiryDate: "Never"),
                       Ingredient(name: "Beans", quantity: 32, unit: "cans", category: "Canned Food", expiryDate: "Never"),
                       Ingredient(name: "Bread", quantity: 2, unit: "Loaves", category: "Bakery", expiryDate: "1/2/2023"),
                       Ingredient(name: "Pineapple Juice", quantity: 4, unit: "Litres", category: "Juice", expiryDate: "3/2/2023")]
}

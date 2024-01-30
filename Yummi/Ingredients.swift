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

}

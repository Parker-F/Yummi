//
//  Recipe.swift
//  Yummi
//
//  Created by Parker, Fred (DMT) on 02/02/2024.
//

import Foundation

struct Recipe {
    let name: String
    let ingredients: [Ingredient]
    let isFavourite: Bool
    let rating: Double
    
    func displayInfo() -> String {
        return (
        """
Name: \(name)
""")
    }
    
    static var recipes: [Recipe] {
        [Recipe(name: "Spaghetti Bolognese", ingredients:
                           [Ingredient(name: "Mince", quantity: 500, unit: "grams", category: "Meat", expiryDate: "2024/02/05"),
                            Ingredient(name: "Onion", quantity: 3, unit: "pieces", category: "Vegetable", expiryDate: "2024/02/07"),
                            Ingredient(name: "Garlic", quantity: 1, unit: "bulb", category: "Vegetable", expiryDate: "2024/02/10"),
                            Ingredient(name: "Tomato Sauce", quantity: 500, unit: "milliliters", category: "Condiment", expiryDate: "2024/03/15"),
                            Ingredient(name: "Spaghetti", quantity: 400, unit: "grams", category: "Pasta", expiryDate: "2024/04/20"),
                            Ingredient(name: "Olive Oil", quantity: 250, unit: "milliliters", category: "Cooking Oil", expiryDate: "2024/05/30"),
                            Ingredient(name: "Salt", quantity: 250, unit: "grams", category: "Seasoning", expiryDate: "2025/01/01"),
                            Ingredient(name: "Pepper", quantity: 100, unit: "grams", category: "Seasoning", expiryDate: "2025/01/01")],
                          isFavourite: false,
                          rating: 4.2),
                   
                   Recipe(name: "Margherita Pizza", ingredients:
                         [Ingredient(name: "Pizza Dough", quantity: 1, unit: "package", category: "Dough", expiryDate: "2024/03/01"),
                          Ingredient(name: "Tomato Sauce", quantity: 200, unit: "grams", category: "Condiment", expiryDate: "2024/03/15"),
                          Ingredient(name: "Fresh Mozzarella", quantity: 250, unit: "grams", category: "Cheese", expiryDate: "2024/03/10"),
                          Ingredient(name: "Basil Leaves", quantity: 1, unit: "bunch", category: "Herbs", expiryDate: "2024/02/28"),
                          Ingredient(name: "Olive Oil", quantity: 30, unit: "milliliters", category: "Cooking Oil", expiryDate: "2024/04/01"),
                          Ingredient(name: "Salt", quantity: 5, unit: "grams", category: "Seasoning", expiryDate: "2025/01/01"),
                          Ingredient(name: "Pepper", quantity: 5, unit: "grams", category: "Seasoning", expiryDate: "2025/01/01")],
                      isFavourite: false,
                          rating: 4.6),
         
                 Recipe(name: "Chicken Alfredo Pasta",
                     ingredients: [
                         Ingredient(name: "Chicken Breast", quantity: 300, unit: "grams", category: "Meat", expiryDate: "2024/02/15"),
                         Ingredient(name: "Fettuccine Pasta", quantity: 400, unit: "grams", category: "Pasta", expiryDate: "2024/04/10"),
                         Ingredient(name: "Heavy Cream", quantity: 250, unit: "milliliters", category: "Dairy", expiryDate: "2024/03/20"),
                         Ingredient(name: "Parmesan Cheese", quantity: 100, unit: "grams", category: "Cheese", expiryDate: "2024/03/10"),
                         Ingredient(name: "Garlic", quantity: 2, unit: "cloves", category: "Vegetable", expiryDate: "2024/02/10"),
                         Ingredient(name: "Butter", quantity: 50, unit: "grams", category: "Dairy", expiryDate: "2024/03/01"),
                         Ingredient(name: "Salt", quantity: 5, unit: "grams", category: "Seasoning", expiryDate: "2025/01/01"),
                         Ingredient(name: "Pepper", quantity: 5, unit: "grams", category: "Seasoning", expiryDate: "2025/01/01")
                     ],
                     isFavourite: false,
                        rating: 3.8),
         
                 Recipe( name: "Prawn Saganaki",
                     ingredients: [
                         Ingredient(name: "Prawns", quantity: 300, unit: "grams", category: "Seafood", expiryDate: "2024/02/25"),
                         Ingredient(name: "Tomatoes", quantity: 4, unit: "pieces", category: "Vegetable", expiryDate: "2024/02/15"),
                         Ingredient(name: "Feta Cheese", quantity: 150, unit: "grams", category: "Cheese", expiryDate: "2024/02/20"),
                         Ingredient(name: "Olive Oil", quantity: 30, unit: "milliliters", category: "Cooking Oil", expiryDate: "2024/03/01"),
                         Ingredient(name: "Garlic", quantity: 2, unit: "cloves", category: "Vegetable", expiryDate: "2024/02/10"),
                         Ingredient(name: "Fresh Parsley", quantity: 1, unit: "bunch", category: "Herbs", expiryDate: "2024/02/28"),
                         Ingredient(name: "Oregano", quantity: 1, unit: "teaspoon", category: "Spice", expiryDate: "2024/02/12"),
                         Ingredient(name: "White Wine", quantity: 50, unit: "milliliters", category: "Beverage", expiryDate: "2024/02/15"),
                         Ingredient(name: "Salt", quantity: 5, unit: "grams", category: "Seasoning", expiryDate: "2025/01/01"),
                         Ingredient(name: "Pepper", quantity: 5, unit: "grams", category: "Seasoning", expiryDate: "2025/01/01")
                     ],
                     isFavourite: true,
                     rating: 4.9),
                 Recipe(name: "Mango Avocado Salad",
                        ingredients: [
                            Ingredient(name: "Ripe Mango", quantity: 1, unit: "pieces", category: "Fruit", expiryDate: "2024/02/20"),
                     Ingredient(name: "Avocado", quantity: 2, unit: "pieces", category: "Vegetable", expiryDate: "2024/02/18"),
                     Ingredient(name: "Cherry Tomatoes", quantity: 200, unit: "grams", category: "Vegetable", expiryDate: "2024/02/15"),
                     Ingredient(name: "Red Onion", quantity: 1, unit: "medium", category: "Vegetable", expiryDate: "2024/02/17"),
                     Ingredient(name: "Lime Juice", quantity: 2, unit: "tablespoons", category: "Citrus", expiryDate: "2024/02/25"),
                     Ingredient(name: "Olive Oil", quantity: 30, unit: "milliliters", category: "Cooking Oil", expiryDate: "2024/03/01"),
                     Ingredient(name: "Fresh Cilantro", quantity: 1, unit: "bunch", category: "Herbs", expiryDate: "2024/02/28"),
                     Ingredient(name: "Salt", quantity: 3, unit: "grams", category: "Seasoning", expiryDate: "2025/01/01"),
                     Ingredient(name: "Black Pepper", quantity: 3, unit: "grams", category: "Seasoning", expiryDate: "2025/01/01")
                    ],
                    isFavourite: false,
                    rating: 4.5),
                Recipe(name: "Salmon and Asparagus Bundles",
                       ingredients: [
                     Ingredient(name: "Salmon Fillets", quantity: 4, unit: "pieces", category: "Seafood", expiryDate: "2024/02/23"),
                     Ingredient(name: "Asparagus Spears", quantity: 16, unit: "pieces", category: "Vegetable", expiryDate: "2024/02/20"),
                     Ingredient(name: "Lemon", quantity: 1, unit: "medium", category: "Citrus", expiryDate: "2024/02/25"),
                     Ingredient(name: "Olive Oil", quantity: 30, unit: "milliliters", category: "Cooking Oil", expiryDate: "2024/03/01"),
                     Ingredient(name: "Garlic Powder", quantity: 1, unit: "teaspoon", category: "Spice", expiryDate: "2024/02/12"),
                     Ingredient(name: "Dill", quantity: 1, unit: "tablespoon", category: "Herbs", expiryDate: "2024/02/28"),
                     Ingredient(name: "Salt", quantity: 4, unit: "grams", category: "Seasoning", expiryDate: "2025/01/01"),
                     Ingredient(name: "Black Pepper", quantity: 4, unit: "grams", category: "Seasoning", expiryDate: "2025/01/01")
                    ],
         isFavourite: true,
         rating: 4.7)
        ]
    }
}



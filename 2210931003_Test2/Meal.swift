//
//  Meal.swift
//  2210931003_Test2
//
//  Created by Brahmjot Singh Tatla on 23/11/24.
//

import Foundation
import UIKit

struct Meal{
    var name: String
    var calories: Int
    var preparationTime: Int
    var category: String
    var thumbnailImage: UIImage?
    var instructions: String
}

var meals: [Meal] = [
    Meal(name: "Pizza", calories: 400, preparationTime: 30, category: "Dessert", instructions: "Pizza is a savory dish of Italian origin, consisting of a base of dough topped with various sauces, cheeses, and toppings.")
]





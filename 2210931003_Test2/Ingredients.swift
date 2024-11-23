//
//  Ingredients.swift
//  2210931003_Test2
//
//  Created by Brahmjot Singh Tatla on 23/11/24.
//

import Foundation
import UIKit

struct Recipe{
    var recipeName: String
    var ingredients: [Ingredients]
    var instructions: [String]
    var category: String
    var nutrionalInformation: Nutrition
    var image: UIImage?
}

struct Ingredients{
    var name: String
    var quantity: Double
}

struct Nutrition{
    var calories: Double
    var fat: Double
    var carbs: Double
    var protein: Double
}

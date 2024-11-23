//
//  MealTableViewCell.swift
//  2210931003_Test2
//
//  Created by Brahmjot Singh Tatla on 23/11/24.
//

import UIKit

class MealTableViewCell: UITableViewCell {

    
    @IBOutlet weak var thumbnailImage: UIImageView!
    
    @IBOutlet weak var recipeName: UILabel!
    
    @IBOutlet weak var caloriCount: UILabel!
    
    @IBOutlet weak var preparationTime: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func update(with meal: Meal){
        thumbnailImage.image = meal.thumbnailImage
        recipeName.text = meal.name
        caloriCount.text = "\(meal.calories) cals"
        preparationTime.text = "Time: \(meal.preparationTime)"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBAction func shareButton(_ sender: UIButton) {
        if let mealName = recipeName.text,
        let calories = caloriCount.text,
        let prepTime = preparationTime.text {
            
                
            let message = "Checkout this meal: \(mealName) Calories: \(calories) Preparation Time: \(prepTime)"
                
                
            let shareSheet = UIActivityViewController(activityItems: [message], applicationActivities: nil)
                
                
            if let currentVC = self.window?.rootViewController {
                currentVC.present(shareSheet, animated: true)
            }
        }
    }
    
}

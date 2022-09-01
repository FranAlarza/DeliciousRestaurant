//
//  FoodCategoryCollectionViewCell.swift
//  DeliciousApp
//
//  Created by Fran Alarza on 1/9/22.
//

import UIKit

class FoodCategoryCollectionViewCell: UICollectionViewCell {
    static let identifier = String(describing: FoodCategoryCollectionViewCell.self)
    
    @IBOutlet weak var foodCategoryImageView: UIImageView!
    @IBOutlet weak var foodCategoryDescriptionLabel: UILabel!
    
    func setData(with model: DishModel) {
        foodCategoryImageView.downloadImage(with: model.image)
        foodCategoryDescriptionLabel.text = model.name
    }
}

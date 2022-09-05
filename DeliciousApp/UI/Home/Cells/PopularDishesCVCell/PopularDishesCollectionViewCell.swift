//
//  PopularDishesCollectionViewCell.swift
//  DeliciousApp
//
//  Created by Fran Alarza on 3/9/22.
//

import UIKit

class PopularDishesCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Identifier
    static let identifier = String(describing: PopularDishesCollectionViewCell.self)

    // MARK: - IBOutlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dishImage: UIImageView!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // MARK: - Functions
    func setData(with model: PopularDish) {
        titleLabel.text = model.name
        dishImage.downloadImage(with: model.image ?? "")
        caloriesLabel.text = model.formattedCalories
        descriptionLabel.text = model.description
    }
}

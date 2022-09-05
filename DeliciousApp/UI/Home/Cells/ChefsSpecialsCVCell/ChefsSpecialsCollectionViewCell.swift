//
//  ChefsSpecialsCollectionViewCell.swift
//  DeliciousApp
//
//  Created by Fran Alarza on 5/9/22.
//

import UIKit

class ChefsSpecialsCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Constants
    static let identifier = String(describing: ChefsSpecialsCollectionViewCell.self)
    
    //MARK: - IBOutlets
    @IBOutlet weak var chefSpecialsImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    

    func setData(with model: PopularDish) {
        chefSpecialsImage.downloadImage(with: model.image ?? "")
        titleLabel.text = model.name
        descriptionLabel.text = model.description
        caloriesLabel.text = model.formattedCalories
    }

}

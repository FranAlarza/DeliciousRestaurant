//
//  CollectionViewCell.swift
//  DeliciousApp
//
//  Created by Fran Alarza on 1/9/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var slideImage: UIImageView!
    @IBOutlet weak var slideTitleLabel: UILabel!
    @IBOutlet weak var slideTitleDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setModel(with model: OnBoardingSlide) {
        slideImage.image = model.image
        slideTitleLabel.text = model.title
        slideTitleDescription.text = model.description
    }
}

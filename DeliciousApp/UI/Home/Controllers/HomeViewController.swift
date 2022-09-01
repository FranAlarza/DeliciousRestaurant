//
//  HomeViewController.swift
//  DeliciousApp
//
//  Created by Fran Alarza on 1/9/22.
//

import UIKit

class HomeViewController: UIViewController {
    var categories: [DishModel] = []

    @IBOutlet weak var foodCategoryCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
        categories = [
            .init(id: "id1", name: "Afican Dishes", image: "https://picsum.photos/100/200"),
            .init(id: "id1", name: "Afican Dishes", image: "https://picsum.photos/100/200"),
            .init(id: "id1", name: "Afican Dishes", image: "https://picsum.photos/100/200"),
            .init(id: "id1", name: "Afican Dishes", image: "https://picsum.photos/100/200"),
            .init(id: "id1", name: "Afican Dishes", image: "https://picsum.photos/100/200"),
            .init(id: "id1", name: "Afican Dishes", image: "https://picsum.photos/100/200")
        ]
    }
    
    private func registerCells() {
        let nib = UINib(nibName: FoodCategoryCollectionViewCell.identifier, bundle: nil)
        foodCategoryCollectionView.register(nib, forCellWithReuseIdentifier: FoodCategoryCollectionViewCell.identifier)
    }

}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FoodCategoryCollectionViewCell.identifier, for: indexPath) as? FoodCategoryCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.setData(with: categories[indexPath.row])
        return cell
    }
    
    
}

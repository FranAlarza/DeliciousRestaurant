//
//  HomeViewController.swift
//  DeliciousApp
//
//  Created by Fran Alarza on 1/9/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    // MARK: - Variables
    var categories: [DishModel] = []
    var popularDish: [PopularDish] = []
    
    // MARK: - IBOutlets
    @IBOutlet weak var foodCategoryCollectionView: UICollectionView!
    @IBOutlet weak var popularDishesCollectionView: UICollectionView!
    @IBOutlet weak var chefSpecialCollectionView: UICollectionView!
    
    // MARK: - LifeCicle
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
        
        popularDish = [
            .init(id: "id1", name: "Pasta", description: "The best dish of pasta ever", image: "https://picsum.photos/100/200", calories: 306),
            .init(id: "id1", name: "Pizza", description: "The best dish of pasta ever", image: "https://picsum.photos/100/200", calories: 587),
            .init(id: "id1", name: "Paella", description: "The best dish of pasta ever", image: "https://picsum.photos/100/200", calories: 265),
            .init(id: "id1", name: "Migas", description: "The best dish of pasta ever", image: "https://picsum.photos/100/200", calories: 149)
        ]
    }
    
    // MARK: - Functions
    private func registerCells() {
        let nibFood = UINib(nibName: FoodCategoryCollectionViewCell.identifier, bundle: nil)
        foodCategoryCollectionView.register(nibFood, forCellWithReuseIdentifier: FoodCategoryCollectionViewCell.identifier)
        
        let nibPopular = UINib(nibName: PopularDishesCollectionViewCell.identifier, bundle: nil)
        popularDishesCollectionView.register(nibPopular, forCellWithReuseIdentifier: PopularDishesCollectionViewCell.identifier)
        
        let nibSpecials = UINib(nibName: ChefsSpecialsCollectionViewCell.identifier, bundle: nil)
        chefSpecialCollectionView.register(nibSpecials, forCellWithReuseIdentifier: ChefsSpecialsCollectionViewCell.identifier)
    }
    
}

// MARK: - Extensions
extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case foodCategoryCollectionView:
            return categories.count
        case popularDishesCollectionView:
            return popularDish.count
        case chefSpecialCollectionView:
            return popularDish.count
        default: return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
        case foodCategoryCollectionView:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FoodCategoryCollectionViewCell.identifier, for: indexPath) as? FoodCategoryCollectionViewCell else {
                return UICollectionViewCell()
            }
            
            cell.setData(with: categories[indexPath.row])
            return cell
            
        case popularDishesCollectionView:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PopularDishesCollectionViewCell.identifier, for: indexPath) as? PopularDishesCollectionViewCell else {
                return UICollectionViewCell()
            }
            
            cell.setData(with: popularDish[indexPath.row])
            return cell
            
        case chefSpecialCollectionView:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ChefsSpecialsCollectionViewCell.identifier, for: indexPath) as? ChefsSpecialsCollectionViewCell else {
                return UICollectionViewCell()
            }
            
            cell.setData(with: popularDish[indexPath.row])
            return cell
            
        default:
            return UICollectionViewCell()
        }
    }
    
    
}

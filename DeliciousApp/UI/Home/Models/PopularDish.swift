//
//  PopularDish.swift
//  DeliciousApp
//
//  Created by Fran Alarza on 3/9/22.
//

import Foundation

struct PopularDish {
    let id, name, description, image: String?
    let calories: Int?
    
    var formattedCalories: String {
        return "\(calories ?? 0) calories"
    }
    
}

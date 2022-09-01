//
//  UIImageView+Extensions.swift
//  DeliciousApp
//
//  Created by Fran Alarza on 1/9/22.
//

import Foundation
import UIKit

extension UIImageView {
    func downloadImage(with url: String) {
        guard let url = URL(string: url) else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, _ in
            guard let data = data else {
                return
            }
            DispatchQueue.main.async {
                let image = UIImage(data: data)
                self.image = image
            }
            
        }.resume()
    }
}

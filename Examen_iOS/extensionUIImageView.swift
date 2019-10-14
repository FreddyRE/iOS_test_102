//
//  imageService.swift
//  Examen_iOS
//
//  Created by Freddy Romero Espinosa on 13/10/19.
//  Copyright © 2019 Freddy Romero Espinosa. All rights reserved.
//

import Foundation

import Foundation
import UIKit

var imageCache = NSCache<AnyObject, AnyObject>()
var dataLoaded1:UIImage?

extension UIImageView {

    func loadImage(urlString: String) {
        
        if let cacheImage = imageCache.object(forKey: urlString as AnyObject) as? UIImage {
            self.image = cacheImage
            return
        }
        
        guard let url = URL(string: urlString) else { return }
    
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("Couldn't download image: ", error)
                return
            }
            
            guard let data = data else { return }
            let image = UIImage(data: data)
            imageCache.setObject(image!, forKey: urlString as AnyObject)
            
            DispatchQueue.main.async {
                dataLoaded1 = image
                //self.image = image
            }
        }.resume()

    }
}

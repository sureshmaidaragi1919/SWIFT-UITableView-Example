//
//  Product.swift
//  AppleProducts
//
//  Created by Suresh Maidaragi on 30/07/18.
//  Copyright © 2018 Suresh Maidaragi. All rights reserved.
//
//Product
//Product will contain [product]
import Foundation
import UIKit


enum ProductRating{
    
    case unrated
    case average
    case ok
    case good
    case brilliant
    
}

class Product {

    var image : UIImage
    var title : String
    var description : String
    var rating : ProductRating
    
    init(titled: String, description : String, imageName : String) {
        self.title = titled
        self.description = description
        
        if let image = UIImage(named: imageName){
            self.image = image
        }else{
            self.image = UIImage(named : "default")!
        }
        self.rating = .unrated
     }
}

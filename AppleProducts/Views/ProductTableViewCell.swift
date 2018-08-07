//
//  ProductTableViewCell.swift
//  AppleProducts
//
//  Created by Suresh Maidaragi on 31/07/18.
//  Copyright © 2018 Suresh Maidaragi. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    
    @IBOutlet weak var productImageView: UIImageView!
    
    @IBOutlet weak var productTitleLabel: UILabel!
    
    @IBOutlet weak var productDescriptionLabel: UILabel!
    
    // MARK: - Data Model
    
    var product: Product?{
        didSet{
            self.updateUI()
        }
    }
    
    func updateUI(){
        
        self.productImageView?.image = product?.image
        self.productTitleLabel?.text =  product?.title
        self.productDescriptionLabel?.text =  product?.description
    }
}

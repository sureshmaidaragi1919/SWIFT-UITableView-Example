//
//  ProductDetailsTableViewController.swift
//  AppleProducts
//
//  Created by Suresh Maidaragi on 08/08/18.
//  Copyright © 2018 Suresh Maidaragi. All rights reserved.
//

import UIKit

class ProductDetailsTableViewController: UITableViewController {
    
    @IBOutlet weak var productImageView: UIImageView!
    
    @IBOutlet weak var productTitleTextField: UITextField!
    
    @IBOutlet weak var productDescriptionTextView: UITextView!
    
    var product : Product? = ProductLine.getProductLines()[0].products[0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Edit Product"
        
        //cc
        productImageView.image = product?.image
        productTitleTextField.text = product?.title
        productDescriptionTextView.text = product?.description
        productTitleTextField.delegate = self
        
        
    }
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        if (indexPath.section == 0 && indexPath.row == 0){
            return indexPath
        }else{
            return nil
        }
    }
}

extension ProductDetailsTableViewController : UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}


//Mark : - UIScrollViewDelegate
extension ProductDetailsTableViewController {
    
    override func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        productDescriptionTextView.resignFirstResponder()
        productTitleTextField.resignFirstResponder()
    }
}

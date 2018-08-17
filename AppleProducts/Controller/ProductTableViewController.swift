//
//  ProductTableViewController.swift
//  AppleProducts
//
//  Created by Suresh Maidaragi on 31/07/18.
//  Copyright © 2018 Suresh Maidaragi. All rights reserved.
//
// 1 - Design the new cell in Storyboard --done
// 2 - Create a subclass of UITableViewCell for new cell --done
// 3 - Update the cell with UITableViewDataSource --progress


// * Delete rows
// 1. Edit button on the right
// 2. Delete a row (in our data model and in our tableview -- UI)
// 3. Nice animation -> move the tableview rows up

// *Move the table view rows around
// 1. Tell the table view that you want to be able to move rows around
// 2. Update the data structure of the data model


// *Transition from TV to TV details
// Design the product details screen using the static table view
// Create a custom class for new table view
// Get the data model for the class and populate data into the table view
// Dismiss the keyboard when return key pressed on text field

// Click on the photo, display the camera/photos library
// Transitions from the products TVC to product details  TVC
// Update the edit of a product

import UIKit

class ProductTableViewController: UITableViewController {

    
    var productLines: [ProductLine] = ProductLine.getProductLines()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Apple Products"
        
        
        //tableView.estimatedRowHeight = tableView.rowHeight
       // tableView.rowHeight = UITableViewAutomaticDimension
 
        tableView.separatorColor =  UIColor.red
        
        navigationItem.rightBarButtonItem = editButtonItem
 
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

  
    // MARK: - UITableViewDataSource
    //UITableViewDAta
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return productLines.count
    }
    
    
 
    // MARK : - How many rows in single section
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return productLines[section].products.count
    }

    
    
    //MARK : - How does row looks like
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Configure the cell...
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell",for: indexPath) as! ProductTableViewCell
 
        let productline = productLines[indexPath.section]
        let products = productline.products
        let product =  products[indexPath.row]
        cell.product = product
    
        return cell
    }
    
    // Multiple sections - title for HeaderInSection
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
         let productLine = productLines[section]
        return productLine.name
    }
    
    
    // Delete/Insert rows
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            // 1- delete the product from the product lines product arrays
            
            let productLine = productLines[indexPath.section]
            productLine.products.remove(at: indexPath.row)
            print("inside the delete row")

            // 2 - Update the table view with the new data
            
           // tableView.reloadData() //bad way
            
            // animate smoothly instead loading everything again
            tableView.deleteRows(at: [indexPath], with: .automatic)
            tableView.allowsMultipleSelection = true
        }
        else if editingStyle == .insert{
            let productLine = productLines[indexPath.section]
            productLine.products.append(Product(titled: "I am idiot", description: "FUCKER HOW CAN YOU ASK ME THE DESCRIPTION ABOUT THE PRODUCT", imageName: "iphone"))
            print("inside the insert row")
 
            tableView.beginUpdates()
            tableView.insertRows(at: [IndexPath.init(row: self.productLines.count-1, section: 0)], with: .automatic)
            tableView.endUpdates()
        }
        
    }
    
    
    // Mark : - Move the cells
    
   override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let  productToMove = productLines[sourceIndexPath.section].products[sourceIndexPath.row]
        
        //move productToMove to destination products
        productLines[destinationIndexPath.section].products.insert(productToMove, at: destinationIndexPath.row)
        
        //delete the productToMove from the source products
        productLines[sourceIndexPath.section].products.remove(at: sourceIndexPath.row)
    }
    
    // Mark :- UITableViewDelegate
    
    var selectedProduct : Product?
      override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let productLine = productLines[indexPath.section]
        let  product = productLine.products[indexPath.row]
        
        selectedProduct = product
        
        performSegue(withIdentifier: "ShowProductDetail", sender: nil)
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

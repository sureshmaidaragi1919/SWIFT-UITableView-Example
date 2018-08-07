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

import UIKit

class ProductTableViewController: UITableViewController {

    
    var productLines: [ProductLine] = ProductLine.getProductLines()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Apple Products"
        
        
        tableView.estimatedRowHeight = tableView.rowHeight
        tableView.rowHeight = UITableViewAutomaticDimension
 
        tableView.separatorColor =  UIColor.red

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
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
         let productLine = productLines[section]
        return productLine.name
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

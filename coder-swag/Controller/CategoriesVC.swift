//
//  ViewController.swift
//  coder-swag
//
//  Created by Alex Beattie on 7/27/17.
//  Copyright © 2017 Artisan Branding. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
   @IBOutlet weak var categoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {

//            - The DATASERVICE is the Array
            let category = DataService.instance.getCategories()[indexPath.row]
//            let categories = DataService.instance.getCategories()
//            let category = categories[indexPath.row]
            cell.updateViews(category: category)
            
            return cell
         
        } else {
            return CategoryCell()
        }
    
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: category)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC {
//            assert(sender as? Category !=nil)
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            
            productsVC.initProdcuts(category: sender as! Category)
           
        }
    }
}


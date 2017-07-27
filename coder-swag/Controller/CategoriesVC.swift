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
            
//            let category = DataService.instance.getCategories()[indexPath.row] - The DATASERVICE is the Array
            let categories = DataService.instance.getCategories()
            let category = categories[indexPath.row]
            cell.updateViews(category: category)
            
            return cell
         
        } else {
            return CategoryCell()
        }
    
        
    }

    


}


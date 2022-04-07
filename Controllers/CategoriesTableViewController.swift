//
//  CategoriesTableViewController.swift
//  InnovationTasks
//
//  Created by Matheus Henrique on 28/01/22.
//

import UIKit

class CategoriesTableViewController: UITableViewController {
    
    var categoryRepository: CategoryRepository?
    var  categories: [Category] = []
    var chooseCategory : ((Category) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.categoryRepository = CategoryRepository(coreDataStack: appDelegate.coreDataStack)
    }
    
    
// MARK: - Table view data source
 
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChooseCategoryCell", for: indexPath)
        let  category = categories[indexPath.row]
        cell.textLabel?.text = category.name
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = categories[indexPath.row]
        self.chooseCategory!(category)
        self.navigationController?.popViewController(animated: true)
    }
}

//
//  CategoriesTableViewController.swift
//  InnovationTasks
//
//  Created by Matheus Henrique on 28/01/22.
//

import UIKit

class CategoriesTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
// MARK: - Table view data source
 
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChooseCategoryCell", for: indexPath)
        return cell
    }
}

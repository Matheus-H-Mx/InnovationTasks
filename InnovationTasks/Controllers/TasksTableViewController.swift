//
//  TasksTableViewController.swift
//  InnovationTasks
//
//  Created by Matheus Henrique on 04/01/22.
//

import UIKit

class TasksTableViewController: UITableViewController {

    private var dateFormater: DateFormatter = DateFormatter()
    
    private var tasks: [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        self.tasks = TaskRepository.instance.getTasks()
    }
    
    override func tableView (_ tableView:UITableView, numberOfRowsInSection section: Int) -> Int{
        return  tasks!.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath) as! TaskTableViewCell
        let task = tasks![indexPath.row]
        
        
        dateFormater.dateFormat = "HH:mm"
        cell.hourLabel.text = dateFormater.string(from: task.date)
        
        dateFormater.dateFormat = "dd/MM/yyyy"
        cell.dateLabel.text = dateFormater.string(from: task.date)
        
        cell.categoryNameLabel.text = task.category.name
        cell.categoryView.backgroundColor = task.category.color
        cell.taskDescrptionLabel.text = task.name
        
        
        return cell
        
    }
}

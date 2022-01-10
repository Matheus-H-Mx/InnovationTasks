//
//  TasksTableViewController.swift
//  InnovationTasks
//
//  Created by Matheus Henrique on 04/01/22.
//

import UIKit


let category = Category(name: "Work", color: UIColor.green)
let tasks: [Task]  = [
    Task(name: "This is my shoopping list task", date: Date(), category: category),
    Task(name: "Call Jane About the substitute", date: Date(), category: category),
]


class TasksTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
}

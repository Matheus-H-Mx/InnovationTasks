//
//  Task.swift
//  InnovationTasks
//
//  Created by Matheus Henrique on 08/01/22.
//

import Foundation
import UIKit

struct  Task {
    var id = UUID()
    var name: String = " "
    var date: Date = Date()
    var category: Category = Category(name: "Marketing", color: .black)
}

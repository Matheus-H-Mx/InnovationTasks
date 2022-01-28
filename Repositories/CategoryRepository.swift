//
//  CategoryRepository.swift
//  InnovationTasks
//
//  Created by Matheus Henrique on 28/01/22.
//

import Foundation
import UIKit

class CategoryRepository {
    
    static func getCategories() -> [Category] {
        let categories = [
            Category(name: "Work", color: UIColor.green),
            Category(name: "Study", color: UIColor.blue),
            Category(name: "To Dos", color: UIColor.yellow),
            Category(name: "Reminders", color: UIColor.red),
        ]
        return categories;
    }
}

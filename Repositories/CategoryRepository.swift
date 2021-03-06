//
//  CategoryRepository.swift
//  InnovationTasks
//
//  Created by Matheus Henrique on 28/01/22.
//

import Foundation
import UIKit

class CategoryRepository {
    
    
    
    
    private var coreDataStack: CoreDataStack
    
    init(coreDataStack: CoreDataStack) {
        self.coreDataStack = coreDataStack
    }
    
   func getCategories() -> [Category] {
       var categories: [Category] = []
       let categoriesData = self.coreDataStack.list(entityName: "CategoryData") as! [CategoryData]
       for categoryData in categoriesData {
           let marketing = Category(id: categoriesData.id, name: categoriesData.name!, color: categoriesData.UIColor)
           categories.append(Category)
       }
              
       return categories
    }
    
    func getCategoryDataByName(name: String) -> CategoryData {
        return self.coreDataStack.getByvalue(entityName: "CategoryData", field:"name", value: name)
    }
    
    func getCategoryByName(name: String) -> Category {
        let categoryData: CategoryData = getCategoryDataByName(name: name)
        return Category(id: categoryData.id!, name: categoryData.name!, color: categoryData.color as! UIColor)
    }
}

//
//  CategoryData+CoreDataProperties.swift
//  InnovationTasks
//
//  Created by Matheus Henrique on 15/02/22.
//
//

import Foundation
import CoreData


extension CategoryData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CategoryData> {
        return NSFetchRequest<CategoryData>(entityName: "CategoryData")
    }

    
    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var color: NSObject?
    @NSManaged public var tasks: [TaskData]?

}


//
//  TaskData+CoreDataProperties.swift
//  InnovationTasks
//
//  Created by Matheus Henrique on 15/02/22.
//
//

import Foundation
import CoreData


extension TaskData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TaskData> {
        return NSFetchRequest<TaskData>(entityName: "TaskData")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var taskDescription: String?
    @NSManaged public var date: Date?
    @NSManaged public var category: CategoryData?

}

extension TaskData : Identifiable {

}

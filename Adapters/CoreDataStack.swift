//
//  CoreDataStack.swift
//  InnovationTasks
//
//  Created by Matheus Henrique on 17/02/22.
//

import Foundation
import CoreData

final class CoreDataStack {
    
    lazy var perisistentContainer: NSPersistentContainer = {
        let container = NSPersistentCloudKitContainer(name: "InnovationTasks")
        
        container.loadPersistentStores(completionHandler: { (_, error) in
            guard let error = error as NSError? else { return }
            fatalError("###\(#function): Failed to load persistent stores:\(error)")
         })
                                       
       return container
      }()

       lazy var context: NSManagedObjectContext = {
           return self.perisistentContainer.viewContext
      }()
//
//       func list<t: NSManagedObject>(entityName: String) -> [T] {
//            let fetchRequest = NSFetchRequest<T>.init(entityName: entityName)
//            return try! persistentContainer.viewContext.fetch(fetchRequest)
//      }
//      func getByValue<T: NSManagedObject>(entityName: String, field: String, value: String) -> T {
//            let fetchRequest = NSFetchRequest<T>.init(entityName: entityName)
//            let predicate = NSPredicate(format: "%K = %@", field, value)
//            fetchRequest.predicate = predicate
//            return try! context.fetch(fetchRequest).first!
//        }
     func save(){
            let context = perisistentContainer.viewContext
            if context.hasChanges {
                do {
                        try context.save()
                    } catch {
                        let nserror = error as NSError
                        fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
                    }
                }
            }
                                       
        }

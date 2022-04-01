//
//  CoreDataManager.swift
//  DailyGrind
//
//  Created by Joseph DeWeese on 3/30/22.
//

import Foundation
import CoreData


class CoreDataManager {
    
    let persistentContainer: NSPersistentContainer
    
    static let shared = CoreDataManager()
    
   private init() {
        
        persistentContainer = NSPersistentContainer(name: "WorkoutModel")
        persistentContainer.loadPersistentStores { (description, error) in
            if let error = error {
                fatalError("Failed to initialize core Data \(error)")
            }
            
        }
    }
    
    func getAllWorkouts() -> [Workout] {
        
        let fetchRequest: NSFetchRequest<Workout> = Workout.fetchRequest()
        do{
            return try persistentContainer.viewContext.fetch(fetchRequest)
        }catch{
            return[]
        }
    }
    func save() {
        do {
            try persistentContainer.viewContext.save()
            
        }catch{
            print("")
        }
    }
}

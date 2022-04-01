//
//  AddWorkoutViewModel.swift
//  DailyGrind
//
//  Created by Joseph DeWeese on 3/30/22.
//

import Foundation

class AddWorkoutViewModel: ObservableObject {
    
     var workoutName: String = ""
    var workoutDesc: String = ""
    var workoutType: String = ""
//    var exercises: [String] = []
   
    func save() {
        let manager = CoreDataManager.shared
        let workout = Workout(context: manager.persistentContainer.viewContext)
        workout.workoutName = workoutName
        workout.workoutDesc = workoutDesc
        workout.workoutType = workoutType
        
        manager.save()
        
    }
    
    
    
}

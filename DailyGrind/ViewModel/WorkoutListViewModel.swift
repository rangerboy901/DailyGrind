//
//  WorkoutListViewModel.swift
//  DailyGrind
//
//  Created by Joseph DeWeese on 3/31/22.
//

import Foundation
import CoreData


class WorkoutListViewModel: ObservableObject {
    
    @Published var workouts = [WorkoutViewModel]()
    
    func getAllWorkouts() {
        
        let workouts = CoreDataManager.shared.getAllWorkouts()
        DispatchQueue.main.async {
            self.workouts = workouts.map(WorkoutViewModel.init)
        }
    }
}
struct WorkoutViewModel {
    
    let workout: Workout
    
    var id: NSManagedObjectID {
        return workout.objectID
    }
    var workoutName: String {
        return workout.workoutName ?? ""
    }
    var workoutDesc: String {
        return workout.workoutDesc ?? "Not Available"
    }
    var  workoutType: String {
        return workout.workoutType ?? ""
    }
    
}

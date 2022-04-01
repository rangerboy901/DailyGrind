//
//  WorkoutCell.swift
//  DailyGrind
//
//  Created by Joseph DeWeese on 3/31/22.
//

import SwiftUI

struct WorkoutCell: View {
    
    @StateObject private var workoutListVM = WorkoutListViewModel()
    let workout: WorkoutViewModel
    
    var body: some View {
        VStack(alignment: .leading){
            Text(workout.workoutName)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            Text(workout.workoutDesc)
                .font(.caption)
                .foregroundColor(.primary)
                .accessibilityAddTraits(.isStaticText)
            Spacer()
            
//            HStack {
//                Text("Exercises: \(workout.exercises.count)")
//                    .accessibilityLabel("\(workout.exercises.count) Number of exercises")
//                    .font(.caption2)
//                Spacer()
                Label("\(workout.workoutType)", systemImage: "clock")
                    .labelStyle(.trailingIcon)
                    .accessibilityLabel("\(workout.workoutType) Workout type")
                    .font(.caption2)
                    .foregroundColor(Color.gray)
                    .padding(3)
                    .overlay(
                        Capsule().stroke(Color(UIColor.systemBrown), lineWidth: 0.75))
            }
        .foregroundColor(.primary)
            .font(.caption)
            .padding()
        }
        
        
    }
    


//struct WorkoutCell_Previews: PreviewProvider {
//    static var workout = DailyWorkout.sampleData[0]
//    static var previews: some View {
//        WorkoutCell(workout: Workout)
//            .background(Workout.theme.mainColor)
//            .previewLayout(.fixed(width: 400, height: 60))
//    }
//}

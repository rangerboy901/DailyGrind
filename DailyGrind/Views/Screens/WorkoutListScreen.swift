//
//  WorkoutListScreen.swift
//  DailyGrind
//
//  Created by Joseph DeWeese on 3/30/22.
//

import SwiftUI

struct WorkoutListScreen: View {
    
    @State private var isPresented: Bool = false
    @StateObject private var workoutListVM = WorkoutListViewModel()
    
    var body: some View {
        List {
            
            ForEach(workoutListVM.workouts, id: \.id) { workout in
                WorkoutCell(workout: workout)
            }
        }
        .listStyle(PlainListStyle())
            .navigationTitle("Workouts")
            .navigationBarItems(trailing: Button("Add Workout") {
                isPresented = true
            }).sheet(isPresented: $isPresented, onDismiss: {
                workoutListVM.getAllWorkouts()
            },  content: {
                AddWorkoutScreen()
            })
            .embedInNavigationView()
            
            .onAppear(perform: {
                workoutListVM.getAllWorkouts()
            })
        }
    }
struct WorkoutListScreen_Previews: PreviewProvider {
    static var previews: some View {
        Group {
        WorkoutListScreen()
    }
}
}

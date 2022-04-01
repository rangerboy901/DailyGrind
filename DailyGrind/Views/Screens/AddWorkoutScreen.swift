//
//  AddWorkoutScreen.swift
//  DailyGrind
//
//  Created by Joseph DeWeese on 3/30/22.
//

import SwiftUI


struct AddWorkoutScreen: View {

@Environment(\.presentationMode) var presentationMode
@StateObject private var addWorkoutVM = AddWorkoutViewModel()

//@State private var exercises: [String] = []
   
    let workoutTypes = ["Cardio","Strength","Power","Recover"]
    
    
    var body: some View {
        //Ensure to add the @Focus for the textfields
        Form {
            TextField("Enter name", text: $addWorkoutVM.workoutName)
            TextField("Enter description", text: $addWorkoutVM.workoutDesc)
            Section(header: Text("Workout Type:")) {
                Picker("Type:", selection: $addWorkoutVM.workoutType) {
                    ForEach(workoutTypes, id:\.self) {
                        Text($0)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                
            }
            }
            .navigationTitle("Add Workout")
            .embedInNavigationView()
        HStack {
            Spacer()
            Button("Save") {
                addWorkoutVM.save()
                presentationMode.wrappedValue.dismiss()
            }
            Spacer()
        }
        .padding()
        Spacer()
        
    }
}
    struct AddWorkoutScreen_Previews: PreviewProvider {
        static var previews: some View {
            AddWorkoutScreen()
        }
    }

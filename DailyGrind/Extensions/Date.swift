//
//  Date.swift
//  DailyGrind
//
//  Created by Joseph DeWeese on 3/30/22.
//

import Foundation

extension Date {
    
    func asFormattedString() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        return formatter.string(from: self)
    }
    
}

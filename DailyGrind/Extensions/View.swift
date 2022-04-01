//
//  View.swift
//  DailyGrind
//
//  Created by Joseph DeWeese on 3/30/22.
//

import Foundation
import SwiftUI

extension View {
    func embedInNavigationView() -> some View {
        NavigationView { self }
    }
}

//
//  TrailingIconLabelStyle.swift
//  DailyGrind
//
//  Created by Joseph DeWeese on 3/31/22.
//


import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}

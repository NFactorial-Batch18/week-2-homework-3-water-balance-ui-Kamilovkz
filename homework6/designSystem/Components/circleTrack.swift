//
//  circleTrack.swift
//  homework6
//
//  Created by Nail Kamilov on 08.05.2022.
//

import SwiftUI

struct CircleTrack: View {
    var circleTo: Double
    var body: some View {
        Circle()
            .stroke(Color.white, lineWidth: 6)
            .opacity(0.3)
            .frame(width: 180, height: 180)
            .overlay(
                Circle()
                    .trim(from: 0.0, to: circleTo)
                    .stroke(Color.white, lineWidth: 6)
                    .rotationEffect(.degrees(270))
            )
    }
}

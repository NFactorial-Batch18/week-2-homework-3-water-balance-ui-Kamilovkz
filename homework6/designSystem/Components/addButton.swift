//
//  addButton.swift
//  homework6
//
//  Created by Nail Kamilov on 08.05.2022.
//

import SwiftUI

struct addButton: View {

    var body: some View {
        Button("Add") {

        }
        .foregroundColor(.white)
        .font(.system(size: 24, weight: .semibold, design: .default))
        .frame(width: 358, height: 60)
        .background(AppColors.button)
        .cornerRadius(16)
    }
}

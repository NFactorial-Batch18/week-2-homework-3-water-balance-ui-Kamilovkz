//
//  AppButton.swift
//  homework6
//
//  Created by Nail Kamilov on 08.05.2022.
//

import SwiftUI

struct AppButton: View {

    var body: some View {
        Button("Next") {

        }
        .foregroundColor(.white)
        .font(.system(size: 24, weight: .semibold, design: .default))
        .frame(width: 358, height: 60)
        .background(AppColors.button)
        .cornerRadius(16)
    }
}

//
//  mainPage.swift
//  homework6
//
//  Created by Nail Kamilov on 08.05.2022.
//

import SwiftUI

struct mainPage: View {
    var body: some View {
        ZStack {
            Color(UIColor(red: 0.988, green: 0.992, blue: 1, alpha: 1))
                .ignoresSafeArea(.all, edges: .all)
            VStack(alignment: .center, spacing: 0) {
                ZStack {
                    Text("Water Balance")
                        .font(.system(size: 24, weight: .black, design: .default))
                        .italic()
                        .foregroundColor(AppColors.text)
                        .textCase(.uppercase)
                        .padding(.top, 108)
                        .padding(.bottom, 62)
                }
                

                Text("What is your goal?")
                    .font(.system(size: 36, weight: .semibold, design: .default))
                    .foregroundColor(AppColors.text2)

                GoalsView()
                    .padding(.top, 32)

                AppButton()
                    .padding(.top, 116)
                    .padding(.bottom, 50)

            }
            .padding([.leading, .trailing], 16)
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct GoalsView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(AppColors.text3)
            VStack(alignment: .center, spacing: 14) {
                GoalView(title: "Goal Number One", isSelected: false)
                GoalView(title: "Goal Number Two", isSelected: true)
                GoalView(title: "Goal Number Three", isSelected: false)
                GoalView(title: "Goal Number Four", isSelected: false)
            }
            .padding(.horizontal, 19) // [leading, trailing]
            .padding(.vertical, 24) // [top, bottom]

        }
        .frame(height: 330)
    }
}


struct GoalView: View {
    var title: String
    var isSelected: Bool
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(Color(red: 252/255, green: 253/255, blue: 255/255))
            HStack {
                Text(title)
                    .foregroundColor(AppColors.text2)
                    .font(.system(size: 16))
                    .fontWeight(.semibold)
                Spacer()
                Image(self.isSelected ? "Picker" : "No")
            }
            .padding(.horizontal, 24)
        }
    }
}

struct mainPage_Previews: PreviewProvider {
    static var previews: some View {
        mainPage()
    }
}


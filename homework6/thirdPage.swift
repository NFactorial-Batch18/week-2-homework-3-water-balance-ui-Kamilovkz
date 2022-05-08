//
//  thirdPage.swift
//  homework6
//
//  Created by Nail Kamilov on 08.05.2022.
//

import SwiftUI

struct thirdPage: View {
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
                    HStack {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 23))
                            .padding(.leading, 9)
                            .foregroundColor(.blue)
                        Spacer()
                    }
                }
                

                Text("Daily intake?")
                    .font(.system(size: 36, weight: .semibold, design: .default))
                    .foregroundColor(AppColors.text2)

                dailytakingView()
                    .padding(.top, 32)

                saveButton()
                    .padding(.top, 77)
                    .padding(.bottom, 400)

            }
            .padding([.leading, .trailing], 16)
            .edgesIgnoringSafeArea(.all)
        }
    }
}


struct dailytakingView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(AppColors.text3)
                .frame(width: 358, height: 108)
            VStack(alignment: .center, spacing: 14) {
                dailytaking
            }
            .padding(.horizontal, 19) // [leading, trailing]
            .padding(.vertical, 24) // [top, bottom]
        }
    }
}

var dailytaking: some View {
    VStack {
        HStack {
            
            ZStack {
                bigitem
                Text("2400")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(.blue)
                    .frame(width: 250, height: 60)
            }
            Text("ML")
                .font(.system(size: 16, weight: .semibold))
                
        }
    }
}

var bigitem: some View {
    RoundedRectangle(cornerRadius: 16)
        .fill(Color.white)
        .frame(width: 250, height: 60)
        .padding(.trailing, 19)
        .padding(.vertical, 24)
    
    }

struct thirdPage_Previews: PreviewProvider {
    static var previews: some View {
        thirdPage()
    }
}

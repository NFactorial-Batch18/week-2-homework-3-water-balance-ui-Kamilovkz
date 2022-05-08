//
//  secondPage.swift
//  homework6
//
//  Created by Nail Kamilov on 08.05.2022.
//

import SwiftUI

struct secondPage: View {
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
                

                Text("Remind me each")
                    .font(.system(size: 36, weight: .semibold, design: .default))
                    .foregroundColor(AppColors.text2)

                TimeView()
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


struct TimeView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(AppColors.text3)
                .frame(width: 352, height: 330)
            VStack(alignment: .center, spacing: 14) {
                straightforwardVGrid
            }
            .padding(.horizontal, 19) // [leading, trailing]
            .padding(.vertical, 24) // [top, bottom]

        }
    }
}

var straightforwardVGrid: some View {
    VStack {
        HStack {
            ZStack {
                item
                Text("15 minutes")
                    .font(.system(size: 16, weight: .semibold))
                    .frame(width: 102, height: 28)
            }
            ZStack {
                item
                Text("30 minutes")
                    .font(.system(size: 16, weight: .semibold))
                    .frame(width: 102, height: 28)
            }
        }
        HStack {
            ZStack {
                item
                Text("45 minutes")
                    .font(.system(size: 16, weight: .semibold))
                    .frame(width: 102, height: 28)
            }
            ZStack {
                item
                Text("1 hour")
                    .font(.system(size: 16, weight: .semibold))
                    .frame(width: 102, height: 28)
            }
        }
        HStack {
            ZStack {
                item
                Text("1,5 hours")
                    .font(.system(size: 16, weight: .semibold))
                    .frame(width: 102, height: 28)
            }
            ZStack {
                item
                Text("2 hours")
                    .font(.system(size: 16, weight: .semibold))
                    .frame(width: 102, height: 28)
            }
        }
        HStack {
            ZStack {
                item
                Text("3 hours")
                    .font(.system(size: 16, weight: .semibold))
                    .frame(width: 102, height: 28)
            }
            ZStack {
                item
                Text("4 hours")
                    .font(.system(size: 16, weight: .semibold))
                    .frame(width: 102, height: 28)
            }
        }
    }
}

var item: some View {
    RoundedRectangle(cornerRadius: 16)
        .fill(Color.white)
        .frame(width: 150, height: 60)
    }

struct secondPage_Previews: PreviewProvider {
    static var previews: some View {
        secondPage()
    }
}

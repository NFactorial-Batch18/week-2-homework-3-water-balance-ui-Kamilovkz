//
//  fourthPage.swift
//  homework6
//
//  Created by Nail Kamilov on 08.05.2022.
//

import SwiftUI

struct fourthPage: View {
    init() {
        UITabBar.appearance().unselectedItemTintColor = .gray
    }
    var body: some View {
        tabViewshka()
    }
    
}



struct tabViewshka: View {
    @State private var selectedItem = 1
    var body: some View {
        TabView(selection: $selectedItem) {
            mainlocal()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Main")
                }.tag(1)
            
            Text("Another Tab")
                .tabItem {
                    Image(systemName: "gearshape")
                    Text("Settings")
                }.tag(2)
            
            Text("The Last Tab")
                .tabItem {
                    Image(systemName: "book.closed")
                    Text("History")
                }.tag(3)
        }.accentColor(.blue)
        .font(.headline)
    }
}

struct mainlocal: View {
    var body: some View {
        ZStack {
            VStack(alignment: .center, spacing: 0) {
                Text("Water Balance")
                    .font(.system(size: 24, weight: .black))
                    .italic()
                    .foregroundColor(AppColors.text)
                    .textCase(.uppercase)
                    .padding(.top, 56)
                    .padding(.bottom, 30)
                    
                mainIndicatorView()
                    .padding(.bottom, 20)
                VStack {
                    Text("Add your first drink for today")
                        .font(.system(size: 36, weight: .semibold))
                        .frame(width: 358, height: 92, alignment: .center)
                        .multilineTextAlignment(.center)
                        .padding(20)
                        .padding(.bottom, 125)
                    addButton()
                }
                
            }
            .padding([.leading, .trailing], 16)
            .edgesIgnoringSafeArea(.all)
        }
        
    }
}


struct mainIndicatorView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .top, endPoint: .bottom)
                .opacity(0.2)
                .cornerRadius(16)
                .frame(width: 358, height: 332)
//            RoundedRectangle(cornerRadius: 16)
//                .foregroundColor(AppColors.text3)
            ZStack {
                VStack(alignment: .center, spacing: 2) {
                    Text("0 %")
                        .font(.title)
                        .font(.system(size: 36, weight: .bold))
                        .padding(2)
                    Text("0 out of 2,4 L")
                }.frame(width: 122, height: 82, alignment: .top)
                    .offset(x: 0, y: -45)
            }
                
            VStack(alignment: .center, spacing: 0) {
                CircleTrack(circleTo: 0)
                Text("Monday, 25th of November")
                    .padding(40)
            }
        }
        .frame(height: 330)
    }
}

struct fourthPage_Previews: PreviewProvider {
    static var previews: some View {
        fourthPage()
    }
}

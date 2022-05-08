//
//  seventhPage.swift
//  homework6
//
//  Created by Nail Kamilov on 08.05.2022.
//

import SwiftUI

struct seventhPage: View {
    init() {
        UITabBar.appearance().unselectedItemTintColor = .gray
    }
    var body: some View {
        tabViewshka4()
    }
    
}

struct tabViewshka4: View {
    @State private var selectedItem = 2
    var body: some View {
        TabView(selection: $selectedItem) {
            Text("Something")
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Main")
                }.tag(1)
            mainlocal4()
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

struct mainlocal4: View {
    var body: some View {
        
ZStack {
    VStack {
        ZStack {
            HStack {
                Text("EDIT")
                    .font(.system(size: 24, weight: .black))
                    .italic()
                    .foregroundColor(AppColors.text)
                    .textCase(.uppercase)
                    .padding(.bottom, 30)
            }
        }
        HStack {
            Text("Daily Intake Level")
                .frame(width: 260, height: 22, alignment: .leading)
                .font(.system(size: 17, weight: .regular))
            Text("2400 ML")
                .foregroundColor(.gray)
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
        }
        Divider().background(Color.white)
            .padding(10)
        HStack {
            Text("Your Goal")
                .frame(width: 260, height: 22, alignment: .leading)
                .font(.system(size: 17, weight: .regular))
            Image(systemName: "chevron.right")
                .padding(.leading, 80)
                .foregroundColor(.gray)
        }
        Divider().background(Color.white)
            .padding(10)
        HStack {
            Text("Reminder")
                .frame(width: 260, height: 22, alignment: .leading)
                .font(.system(size: 17, weight: .regular))
            Image(systemName: "chevron.right")
                .padding(.leading, 80)
                .foregroundColor(.gray)
        }
        Divider().background(Color.white)
            .padding(10)
        Spacer()
            }
        }
    }
}


struct seventhPage_Previews: PreviewProvider {
    static var previews: some View {
        seventhPage()
    }
}

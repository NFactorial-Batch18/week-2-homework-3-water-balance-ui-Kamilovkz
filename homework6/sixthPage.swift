//
//  sixthPage.swift
//  homework6
//
//  Created by Nail Kamilov on 08.05.2022.
//

import SwiftUI

struct sixthPage: View {
    init() {
        UITabBar.appearance().unselectedItemTintColor = .gray
    }
    var body: some View {
        tabViewshka3()
    }
    
}

struct tabViewshka3: View {
    @State private var selectedItem = 3
    var body: some View {
        TabView(selection: $selectedItem) {
            Text("Something")
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Main")
                }.tag(1)
            Text("The Last Tab")
                .tabItem {
                    Image(systemName: "gearshape")
                    Text("Settings")
                }.tag(2)
            mainlocal3()
                .tabItem {
                    Image(systemName: "book.closed")
                    Text("History")
                }.tag(3)
        }.accentColor(.blue)
        .font(.headline)
    }
}

struct mainlocal3: View {
    var body: some View {
        ZStack {
            VStack(alignment: .center, spacing: 3) {
                Text("History")
                    .font(.system(size: 24, weight: .black))
                    .italic()
                    .foregroundColor(AppColors.text)
                    .textCase(.uppercase)
                Spacer()
            }
            ZStack {
                VStack {
                    HStack {
                        Text("Today")
                    }.foregroundColor(.black)
                        .frame(width: 350, height: 40, alignment: .leading)
                        .font(.system(size: 20, weight: .semibold))
                    Four()
                    HStack {
                        Text("23.11.22")
                    }.foregroundColor(.black)
                        .frame(width: 350, height: 40, alignment: .leading)
                        .font(.system(size: 20, weight: .semibold))
                    Four()
                }
            }
            .padding([.leading, .trailing], 16)
            .padding(.bottom, 47)
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct Four: View {
    var body: some View {
        Group {
            HStack {
                FileView(file: .example)
            }
            Divider().background(Color.black)
            HStack {
                FileView(file: .example2)
            }
            Divider().background(Color.black)
            HStack {
                FileView(file: .example3)
            }
            Divider().background(Color.black)
            HStack {
                FileView(file: .example4)
            }
            Divider().background(Color.black)
        }.padding(10)
    }
}

struct File: Identifiable, Hashable {
    let id = UUID()
    
    let name: String
    var time: String {
        "\(Int.random(in: 10...20)):\(Int.random(in: 10...20))"
    }

    var children: [File] = []

    static let example = File(name: "250 ml")
    static let example2 = File(name: "200 ml")
    static let example3 = File(name: "50 ml")
    static let example4 = File(name: "300 ml")
    
    static var dates: File {
        File(name: "\(Int.random(in: 1...31)).\(Int.random(in: 1...12)).2022",
             children: Array(repeating: File.example, count: 3))
    }
    
}

struct FileView: View {
    let file: File

    var body: some View {
        ZStack {
            HStack {
                Text(file.name)
                    .foregroundColor(.black)
                    .font(.system(size: 17, weight: .regular))
                Spacer()
                Text(file.time)
                    .font(.system(size: 17, weight: .regular))
                    .foregroundColor(.gray)
            }.frame(width: 350, height: 3)
        }
    }
}



struct sixthPage_Previews: PreviewProvider {
    static var previews: some View {
        sixthPage()
    }
}

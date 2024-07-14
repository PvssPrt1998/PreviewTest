//
//  TabBarView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 11.07.2024.
//

import SwiftUI

struct TabBarView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = .bgMain
        UITabBar.appearance().unselectedItemTintColor = .textTertiary
    }
    
    var body: some View {
        TabView {
            VStack {}
                .tabItem {
                    ItemTabBarView(imageTitle: ImageTitles.tabItemHouse.rawValue, text: "Home")
                }
            VStack {}
                .tabItem {
                    ItemTabBarView(imageTitle: ImageTitles.tabItemPerson.rawValue, text: "Employees")
                }
            VStack {}
                .tabItem {
                    ItemTabBarView(imageTitle: ImageTitles.tabItemWrench.rawValue, text: "Repair")
                }
            VStack {}
                .tabItem {
                    ItemTabBarView(imageTitle: ImageTitles.tabItemGear.rawValue, text: "Settings")
                }
        }
        .tintCustom(.appSecondary)
    }
}

#Preview {
    TabBarView()
}

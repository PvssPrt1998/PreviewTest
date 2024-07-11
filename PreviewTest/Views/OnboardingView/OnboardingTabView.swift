//
//  OnboardingTabView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 11.07.2024.
//

import SwiftUI

struct OnboardingTabView: View {
    
    @Environment(\.safeAreaInsets) private var safeAreaInsets
    
    init() {
        UIScrollView.appearance().bounces = false
    }
    
    @State var selection: Int = 0
    
    private let pages = [0, 1, 2]
    
    var body: some View {
        TabView(selection: $selection) {
            OnboardingView(title: "Employees are under control",
                           caption: "Place a bet on yourself",
                           backgroundImageTitle: ImageTitles.UserOnboardingBackground1.rawValue,
                           action: {})
            .tag(0)
            
            OnboardingView(title: "Rate our app in the AppStore",
                           caption: "Help make the app even better",
                           backgroundImageTitle: ImageTitles.UserOnboardingBackground2.rawValue,
                           action: {})
            .tag(1)
//            backgroundImage(backgroundImageTitle: ImageTitles.UserOnboardingBackground3.rawValue,
//                            color: .darkBlue1)
            OnboardingView(title: "Rate our app in the AppStore",
                           caption: "Help make the app even better",
                           backgroundImageTitle: ImageTitles.UserOnboardingBackground2.rawValue,
                           action: {})
            .blur(radius: 5)
            .tag(2)
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .overlay(
            VStack {
                Spacer()
                HStack(spacing: 15) {
                    ForEach(0..<pages.count, id: \.self) { index in
                        Capsule()
                            .fill(.specialLightBlue.opacity(selection == index ? 1 : 0.3))
                            .frame(width: selection == index ? 25 : 8, height: 8)
                    }
                    Spacer()
                }
            }
            .padding(EdgeInsets(top: 0,
                                leading: 15,
                                bottom: safeAreaInsets.bottom + (45/2 - 4),
                                trailing: 15))
        )
        .ignoresSafeArea()
    }
}

#Preview {
    OnboardingTabView()
}

//
//  OnboardingViewModel.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 11.07.2024.
//

import SwiftUI

final class UserOnboardingViewModel: ObservableObject {
    
    struct OnboardingData {
        let title: String
        let caption: String
        let backgroundTitle: String
    }
    
    struct Alert: Identifiable {
        var id = UUID()
        
        let imageTitle: String
        let title: String
        let description: String
        let rate: Double
        let actionTitle: String
    }
    
    @Published var showAlert: Bool = false
    @Published var selection: Int = 0 {
        didSet {
            if selection == 2 {
                showAlert = true
            } else if selection != 2 && oldValue == 2 {
               showAlert = false
            }
        }
    }
    
    let alert: Alert = Alert(imageTitle: ImageTitles.AppLogo.rawValue,
                             title: "Review Store Review Controller?",
                             description: "Tap a star to rate it on the App Store.",
                             rate: 0,
                             actionTitle: "Not now")
    
    var itemsRange: Range<Int> {
        0..<items.count
    }
    
    var indicatorElementsCount: Int {
        items.count - 1
    }
    
    var blur: Bool {
        selection == 2 ? true : false
    }
    
    let items = [OnboardingData(title: "Employees are under control", caption: "Place a bet on yourself", backgroundTitle: ImageTitles.UserOnboardingBackground1.rawValue),
                 OnboardingData(title: "Rate our app in the AppStore", caption: "Help make the app even better", backgroundTitle: ImageTitles.UserOnboardingBackground2.rawValue),
                 OnboardingData(title: "Rate our app in the AppStore", caption: "Help make the app even better", backgroundTitle: ImageTitles.UserOnboardingBackground3.rawValue)
    ]
    
    func selectionNext() {
        if selection < items.count - 1 {
            selection += 1
        }
    }
    
    func colorByIndex(_ index: Int) -> Color {
        selection == index ? Color.appSecondary : .secondaryDisabled
    }
    
    func widthByIndex(_ index: Int) -> CGFloat {
        if selection == index || selection == 2 && index == 1{
            return 25
        } else {
            return 8
        }
    }
}

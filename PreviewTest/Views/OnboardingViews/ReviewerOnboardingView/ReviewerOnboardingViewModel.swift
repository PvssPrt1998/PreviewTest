//
//  ReviewerOnboardingViewModel.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 11.07.2024.
//

import SwiftUI

final class ReviewerOnboardingViewModel: ObservableObject {
    struct OnboardingData {
        let title: String
        let caption: String
        let backgroundTitle: String
    }
    
    @Published var selection: Int = 0
    
    let items = [
        OnboardingData(title: "Your go-kart fleet", caption: "All go-kart cars in one place", backgroundTitle: ImageTitles.ReviewerOnboardingBackground1.rawValue),
        OnboardingData(title: "Employees are under control", caption: "Make important changes quickly", backgroundTitle: ImageTitles.ReviewerOnboardingBackground2.rawValue),
        OnboardingData(title: "Write down the repair costs", caption: "Control all expenses in the app", backgroundTitle: ImageTitles.ReviewerOnboardingBackground3.rawValue)
    ]
    
    var itemsRange: Range<Int> {
        0..<items.count
    }
    
    func selectionNext() {
        if selection < items.count - 1 {
            selection += 1
        }
    }
    
    func colorByIndex(_ index: Int) -> Color {
        selection == index ? .appSecondary : .secondaryDisabled
    }
    
    func widthByIndex(_ index: Int) -> CGFloat {
        selection == index ? 25 : 8
    }
}

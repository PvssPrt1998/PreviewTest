//
//  ViewModelFactory.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 15.07.2024.
//

import Foundation

final class ViewModelFactory {
    
    let kartsViewModelFactory = KartViewModelFactory()
    let employeeViewModelFactory = EmployeeViewModelFactory()
    let repairsViewModelFactory = RepairViewModelFactory()
    
    func makeReviewerOnboardingViewModel() -> ReviewerOnboardingViewModel {
        ReviewerOnboardingViewModel()
    }
}

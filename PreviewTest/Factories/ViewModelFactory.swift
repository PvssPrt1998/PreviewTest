//
//  ViewModelFactory.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 15.07.2024.
//

import Foundation
import Combine

final class ViewModelFactory {
    
    let kartsViewModelFactory: KartViewModelFactory
    let employeeViewModelFactory: EmployeeViewModelFactory
    let repairsViewModelFactory: RepairViewModelFactory
    
    let dataManager: DataManager
    
    private var dataManagerCancellable: AnyCancellable?
    
    init(dataManager: DataManager) {
        self.dataManager = dataManager
        
        self.kartsViewModelFactory = KartViewModelFactory(kartData: KartData(dataManager: dataManager))
        self.employeeViewModelFactory = EmployeeViewModelFactory(employeesData: EmployeesData(dataManager: dataManager))
        self.repairsViewModelFactory = RepairViewModelFactory(repairData: RepairData(dataManager: dataManager))
        
        dataManagerCancellable = dataManager.$dataLoaded.sink { [weak self] value in
            if value {
                self?.kartsViewModelFactory.kartData.kartingPlace = dataManager.kartingPlace
                self?.kartsViewModelFactory.kartData.karts = dataManager.karts
                self?.employeeViewModelFactory.employeesData.employees = dataManager.employees
                self?.repairsViewModelFactory.repairData.repairs = dataManager.repairs
                self?.repairsViewModelFactory.repairData.totalCost = dataManager.repairTotalCost
            }
        }
    }
    
    func makeReviewerOnboardingViewModel() -> ReviewerOnboardingViewModel {
        ReviewerOnboardingViewModel()
    }
    
    func makeLoadingViewModel() -> LoadingViewModel {
        LoadingViewModel(dataManager: dataManager)
    }
}

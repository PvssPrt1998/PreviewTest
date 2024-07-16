//
//  EmployeeViewModelFactory.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 15.07.2024.
//

import Foundation

final class EmployeeViewModelFactory {
    
    func makeEmployeesViewModel() -> EmployeesViewModel {
        EmployeesViewModel(employeesData: EmployeesData())
    }
    
    func makeEmployeesCollectionViewModel() -> EmployeesCollectionViewModel {
        EmployeesCollectionViewModel(employeesData: EmployeesData())
    }
    
    func makeEmployeeAddViewModel() -> EmployeeAddViewModel {
        EmployeeAddViewModel(employeesData: EmployeesData())
    }
    
}

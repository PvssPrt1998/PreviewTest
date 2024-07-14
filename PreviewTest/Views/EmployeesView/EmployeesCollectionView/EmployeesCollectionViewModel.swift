//
//  EmployeesCollectionViewModel.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 14.07.2024.
//

import Foundation
import Combine

final class EmployeesCollectionViewModel: ObservableObject {
    
    let employeesData: EmployeesData
    
    var employees: Array<Employee> {
        employeesData.employees
    }
    
    private var employeesCancellable: AnyCancellable?
    
    init(employeesData: EmployeesData) {
        self.employeesData = employeesData
        
        employeesCancellable = employeesData.$employees.sink { [weak self] _ in
            self?.objectWillChange.send()
        }
    }
}

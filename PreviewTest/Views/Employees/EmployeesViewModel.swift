//
//  EmployeesViewModel.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 11.07.2024.
//

import Foundation
import Combine

final class EmployeesViewModel: ObservableObject {
    
    let employeesData: EmployeesData
    
    var employeesExists: Bool {
        employeesData.employees.count > 0
    }
    
    private var employeesDataCancellable: AnyCancellable?
    
    init(employeesData: EmployeesData) {
        self.employeesData = employeesData
        
        employeesDataCancellable = employeesData.$employees.sink { [weak self] _ in
            self?.objectWillChange.send()
        }
    }
}

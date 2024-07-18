//
//  EmployeesData.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 14.07.2024.
//

import Foundation

final class EmployeesData: ObservableObject {
    
    private weak var dataManager: DataManager?
    
    @Published var employees: Array<Employee> = [
//        Employee(employeeName: "Name", position: "position", workingHours: "9:00 - 19:00"),
//        Employee(employeeName: "Name1", position: "position", workingHours: "9:00 - 19:00"),
//        Employee(employeeName: "Name2", position: "position", workingHours: "9:00 - 19:00"),
//        Employee(employeeName: "Name3", position: "position", workingHours: "9:00 - 19:00"),
//        Employee(employeeName: "Name4", position: "position", workingHours: "9:00 - 19:00"),
//        Employee(employeeName: "Name5", position: "position", workingHours: "9:00 - 19:00"),
//        Employee(employeeName: "Name6", position: "position", workingHours: "9:00 - 19:00"),
//        Employee(employeeName: "Name7", position: "position", workingHours: "9:00 - 19:00")
    ]
    
    init(dataManager: DataManager) {
        self.dataManager = dataManager
    }
    
    func setEmployee(_ employee: Employee) {
        DispatchQueue.main.async { [weak self] in
            self?.dataManager?.localStorage.saveEmployee(employee)
        }
        self.employees.append(employee)
    }
}

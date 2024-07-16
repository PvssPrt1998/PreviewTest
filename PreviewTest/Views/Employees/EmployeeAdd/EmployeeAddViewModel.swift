//
//  EmployeeAddViewModel.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 14.07.2024.
//

import Foundation

final class EmployeeAddViewModel: ObservableObject {
    
    let employeesData: EmployeesData
    
    @Published var textFields: Array<TextField> = [
        TextField(text: "", placeholder: "Enter name", isFirstResponder: false),
        TextField(text: "", placeholder: "Enter post", isFirstResponder: false),
        TextField(text: "", placeholder: "Enter working hours", isFirstResponder: false)
    ]
    
    @Published var imageTitle: String?
    
    init(employeesData: EmployeesData, imageTitle: String? = nil) {
        self.employeesData = employeesData
        self.imageTitle = imageTitle
    }
    
    func addKartingPlace() {
        employeesData.employees.append(Employee(employeeName: textFields[0].text, position: textFields[1].text, workingHours: textFields[2].text))
    }
}

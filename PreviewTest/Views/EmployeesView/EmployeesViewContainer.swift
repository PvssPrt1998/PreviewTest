//
//  EmployeesViewContainer.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 14.07.2024.
//

import SwiftUI

final class EmployeesViewContainer {
    
    let employeesData = EmployeesData()
    
    @ViewBuilder func employeesView() -> some View {
        EmployeesView(container: self, viewModel: EmployeesViewModel(employeesData: employeesData))
    }
    
    @ViewBuilder func employeesCollectionView() -> some View {
        EmployeesCollectionView(viewModel: EmployeesCollectionViewModel(employeesData: employeesData))
    }
    
    @ViewBuilder func employeeAddView() -> some View {
        EmployeeAddView(viewModel: EmployeeAddViewModel())
    }
}

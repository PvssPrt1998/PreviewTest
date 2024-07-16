//
//  EmployeesViewContainer.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 14.07.2024.
//

import SwiftUI

final class EmployeesContainer {
    
    let employeesData = EmployeesData()
    
    let employeeViewModelFactory: EmployeeViewModelFactory
    
    init(_ employeeViewModelFactory: EmployeeViewModelFactory) {
        self.employeeViewModelFactory = employeeViewModelFactory
    }
    
    @ViewBuilder func employeesView() -> some View {
        EmployeesView(container: self, viewModel: employeeViewModelFactory.makeEmployeesViewModel())
    }
    
    @ViewBuilder func employeesCollectionView() -> some View {
        EmployeesCollectionView(viewModel: employeeViewModelFactory.makeEmployeesCollectionViewModel())
    }
    
    @ViewBuilder func employeeAddView(_ showSheet: Binding<Bool>) -> some View {
        EmployeeAddView(viewModel: employeeViewModelFactory.makeEmployeeAddViewModel(), showSheet: showSheet)
    }
}

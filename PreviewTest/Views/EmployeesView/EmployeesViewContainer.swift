//
//  EmployeesViewContainer.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 14.07.2024.
//

import SwiftUI

final class EmployeesViewContainer {
    
    let employeesData = EmployeesData()
    
//    init(employeesData: EmployeesData) {
//        self.employeesData = employeesData
//    }
    
    @ViewBuilder func employeesView() -> some View {
        EmployeesView(container: self)
    }
    
    @ViewBuilder func employeesCollectionView() -> some View {
        EmployeesCollectionView(viewModel: EmployeesCollectionViewModel(employeesData: employeesData))
    }
    
//    @ViewBuilder func employeesEmptyView() -> some View {
//        EmployeesEmptyView(viewModel: EmployeesEmptyViewModel())
//    }
}

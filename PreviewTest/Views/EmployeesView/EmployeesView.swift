//
//  EmployeesView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 11.07.2024.
//

import SwiftUI

struct EmployeesView: View {
    
    weak var container: EmployeesViewContainer?
    
    @ObservedObject var viewModel: EmployeesViewModel
    
    @State var showAddEmployeeView: Bool = false
    
    var body: some View {
        BackgroundContainerView(title: "Employee") {
            employeeView()
                .sheet(isPresented: $showAddEmployeeView, content: {
                    container?.employeeAddView()
                })
        }
    }
    
    @ViewBuilder private func employeeView() -> some View {
        if viewModel.employeesExists {
            container?.employeesCollectionView()
        } else {
            EmployeesEmptyView(showAddEmployeeView: $showAddEmployeeView)
        }
    }
}

#Preview {
    EmployeesView(container: EmployeesViewContainer(), viewModel: EmployeesViewModel(employeesData: EmployeesData()))
}


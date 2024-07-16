//
//  EmployeeAddView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 14.07.2024.
//

import SwiftUI

struct EmployeeAddView: View {
    
    @ObservedObject var viewModel: EmployeeAddViewModel
    @Binding var showSheet: Bool
    
    var body: some View {
        AddItemView(title: "New employee", 
                    buttonTitle: "Add",
                    withImage: false,
                    showSheet: $showSheet,
                    textFields: $viewModel.textFields) { _ in}
    }
}

struct EmployeeAddView_Preview: PreviewProvider {
    @State static var showSheet = true
    
    static var previews: some View {
        EmployeeAddView(viewModel: EmployeeAddViewModel(employeesData: EmployeesData()), showSheet: $showSheet)
    }
}

//
//  EmployeeAddView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 14.07.2024.
//

import SwiftUI

struct EmployeeAddView: View {
    
    @ObservedObject var viewModel: EmployeeAddViewModel
    
    var body: some View {
        AddItemView(title: "New employee", buttonTitle: "Add", textFields: $viewModel.textFields)
    }
}

#Preview {
    EmployeeAddView(viewModel: EmployeeAddViewModel())
}

//
//  EmployeeCollectionView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 14.07.2024.
//

import SwiftUI

struct EmployeesCollectionView: View {
    
    @ObservedObject var viewModel: EmployeesCollectionViewModel
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible(), spacing: 5), GridItem(.flexible(), spacing: 5)]) {
                ForEach(viewModel.employees, id: \.self) { employee in
                    EmployeeCollectionViewCell(employee: employee)
                }
            }
        }
    }
}

#Preview {
    EmployeesCollectionView(viewModel: EmployeesCollectionViewModel(employeesData: EmployeesData()))
        .background(Color.bgSecond)
}

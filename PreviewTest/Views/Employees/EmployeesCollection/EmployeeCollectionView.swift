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
                ForEach(0..<viewModel.employeesCount, id: \.self) { index in
                    EmployeeCollectionViewCell(employee: viewModel.getEmployee(by: index))
                }
            }
        }
    }
}

#Preview {
    EmployeesCollectionView(viewModel: EmployeesCollectionViewModel(employeesData: EmployeesData()))
        .background(Color.bgSecond)
}

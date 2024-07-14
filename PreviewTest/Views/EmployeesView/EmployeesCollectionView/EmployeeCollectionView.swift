//
//  EmployeeCollectionView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 14.07.2024.
//

import SwiftUI

struct EmployeesCollectionView: View {
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible(), spacing: 5), GridItem(.flexible(), spacing: 5)]) {
                ForEach(employees, id: \.self) { employee in
                    EmployeeCollectionViewCell(employee: employee)
                }
            }
        }
    }
}

#Preview {
    EmployeesCollectionView()
        .background(Color.bgSecond)
}

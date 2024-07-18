//
//  EmployeeCollectionViewCell.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 14.07.2024.
//

import SwiftUI

struct EmployeeCollectionViewCell: View {
    
    let employee: Employee
    
    var body: some View {
        VStack(spacing: 16) {
            descriptionCouple(text1: employee.employeeName, text2: employee.position, bottomTextColor: .textSecond)
            descriptionCouple(text1: employee.workingHours, text2: "Working hours", bottomTextColor: .textNotActive)
        }
        .padding(EdgeInsets(top: 12, leading: 18, bottom: 12, trailing: 18))
        .background(Color.bgLight)
        .clipShape(.rect(cornerRadius: 12))
    }
    
    @ViewBuilder func descriptionCouple(text1: String, text2: String, bottomTextColor: Color) -> some View {
        VStack(spacing: 0) {
            HStack {
                TextCustom(text: text1, size: 17, weight: .semibold, color: .textMain)
                Spacer()
            }
            HStack {
                TextCustom(text: text2, size: 12, weight: .regular, color: bottomTextColor)
                Spacer()
            }
        }
    }
}

#Preview {
    EmployeeCollectionViewCell(employee: Employee(employeeName: "name", position: "position", workingHours: "10:30 - 15:30"))
        .padding(40)
        .background(Color.bgSecond)
}

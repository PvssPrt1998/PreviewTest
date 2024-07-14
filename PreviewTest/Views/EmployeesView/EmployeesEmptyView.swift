//
//  EmployeesEmptyView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 14.07.2024.
//

import SwiftUI

struct EmployeesEmptyView: View {
    var body: some View {
        AddView(title: "Add your employees", description: "fill in the information", buttonTitle: "Add employee", showBackground: true)
    }
}

#Preview {
    EmployeesEmptyView()
}

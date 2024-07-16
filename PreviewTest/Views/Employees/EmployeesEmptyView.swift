//
//  EmployeesEmptyView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 14.07.2024.
//

import SwiftUI

struct EmployeesEmptyView: View {
    
    @Binding var showAddEmployeeView: Bool
    
    var body: some View {
        AddView(title: "Add your employees", description: "fill in the information", buttonTitle: "Add employee", showBackground: true) {
            showAddEmployeeView = true
        }
    }
}

struct EmployeesEmptyView_Preview: PreviewProvider {
    
    @State static var showAddEmployeeView: Bool = false
    
    static var previews: some View {
        EmployeesEmptyView(showAddEmployeeView: $showAddEmployeeView)
    }
}

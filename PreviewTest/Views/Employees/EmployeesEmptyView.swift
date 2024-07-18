//
//  EmployeesEmptyView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 14.07.2024.
//

import SwiftUI

struct EmployeesEmptyView: View {
    
    @EnvironmentObject var showSheet: EmployeesView.ShowSheetWrapper
    
    var body: some View {
        AddView(title: "Add your employees", description: "fill in the information", buttonTitle: "Add employee", showBackground: true) {
            showSheet.showSheet = true
        }
    }
}

struct EmployeesEmptyView_Preview: PreviewProvider {
    
    static var previews: some View {
        EmployeesEmptyView()
    }
}

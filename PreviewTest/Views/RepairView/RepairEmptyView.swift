//
//  RepairEmptyView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 14.07.2024.
//

import SwiftUI

struct RepairEmptyView: View {
    
    @Binding var showAddRepairView: Bool
    
    var body: some View {
        AddView(title: "Add info Repair", description: "Fill out the repair expenses", buttonTitle: "Add info", showBackground: true) {
            showAddRepairView = true
        }
    }
}

struct RepairEmptyView_Preview: PreviewProvider {
    
    @State static var showAddRepairView: Bool = false
    
    static var previews: some View {
        RepairEmptyView(showAddRepairView: $showAddRepairView)
    }
}

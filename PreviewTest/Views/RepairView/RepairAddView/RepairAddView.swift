//
//  AddRepairView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 14.07.2024.
//

import SwiftUI

struct RepairAddView: View {
    
    @ObservedObject var viewModel: RepairAddViewModel
    
    var body: some View {
        AddItemView(title: "New info Repair", buttonTitle: "Add", textFields: $viewModel.textFields)
    }
}

#Preview {
    RepairAddView(viewModel: RepairAddViewModel())
}

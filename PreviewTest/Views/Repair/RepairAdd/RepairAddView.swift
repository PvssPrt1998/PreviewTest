//
//  AddRepairView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 14.07.2024.
//

import SwiftUI

struct RepairAddView: View {
    
    @ObservedObject var viewModel: RepairAddViewModel
    @Binding var showSheet: Bool
    
    var body: some View {
        AddItemView(title: "New info Repair",
                    buttonTitle: "Add",
                    withImage: false, 
                    showSheet: $showSheet,
                    textFields: $viewModel.textFields) { _ in }
    }
}

struct RepairAddView_Preview: PreviewProvider {
    @State static var showSheet = true
    
    static var previews: some View {
        RepairAddView(viewModel: RepairAddViewModel(repairData: RepairData()), showSheet: $showSheet)
    }
}

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
        SheetBackgroundContainerView(title: "New info Repair") {
            VStack(spacing: 20) {
                TextFieldCustom(text: $viewModel.nameText, placeholder: "Enter name")
                    .onTapGesture {}
                TextFieldCustom(text: $viewModel.costText, placeholder: "Enter cost")
                    .onTapGesture {}
                AddItemViewButton(title: "Add", disabled: viewModel.disabled) {
                    viewModel.addButtonPressed()
                    showSheet = false
                }
                Spacer()
            }
        }.onTapGesture {
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to:nil, from:nil, for:nil)
        }
    }
}

struct RepairAddView_Preview: PreviewProvider {
    @State static var showSheet = true
    
    static var previews: some View {
        RepairAddView(viewModel: RepairAddViewModel(repairData: RepairData()), showSheet: $showSheet)
    }
}

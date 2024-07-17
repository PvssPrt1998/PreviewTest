//
//  EmployeeAddView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 14.07.2024.
//

import SwiftUI

struct EmployeeAddView: View {
    
    @ObservedObject var viewModel: EmployeeAddViewModel
    @Binding var showSheet: Bool
    
    @State var nameFieldFirstResponder = false
    @State var postFieldFirstResponder = false
    @State var workingHoursFieldFirstResponder = false
    
    var body: some View {
        SheetBackgroundContainerView(title: "New employee") {
            VStack(spacing: 20) {
                TextFieldCustom(text: $viewModel.nameText, placeholder: "Enter name")
                    .onTapGesture {}
                TextFieldCustom(text: $viewModel.postText, placeholder: "Enter post")
                    .onTapGesture {}
                TextFieldCustom(text: $viewModel.workingHoursText, placeholder: "Enter working hours")
                    .onTapGesture {}
                AddItemViewButton(title: "Add", disabled: viewModel.disabled) {
                    viewModel.addButtonPressed()
                    showSheet = false
                }
                .onTapGesture {}
                Spacer()
            }
        }.onTapGesture {
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to:nil, from:nil, for:nil)
        }
    }
}

struct EmployeeAddView_Preview: PreviewProvider {
    @State static var showSheet = true
    
    static var previews: some View {
        EmployeeAddView(viewModel: EmployeeAddViewModel(employeesData: EmployeesData()), showSheet: $showSheet)
    }
}

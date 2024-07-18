//
//  EmployeesView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 11.07.2024.
//

import SwiftUI

struct EmployeesView: View {
    
    weak var container: EmployeesContainer?
    
    @ObservedObject var viewModel: EmployeesViewModel

    class ShowSheetWrapper: ObservableObject {
        @Published var showSheet = false
    }
    
    @StateObject var showSheetWrapper = ShowSheetWrapper()
    
    var body: some View {
        ZStack {
            BackgroundContainerView(title: "Employee") {
                employeeView()
                    .sheet(isPresented: $showSheetWrapper.showSheet, content: {
                        container?.employeeAddView()
                    })
                    .environmentObject(showSheetWrapper)
            }
            VStack {
                Spacer()
                Divider()
            }
        }
    }
    
    @ViewBuilder private func employeeView() -> some View {
        if viewModel.employeesExists {
            ZStack {
                container?.employeesCollectionView()
                VStack {
                    Spacer()
                    AddItemViewButton(title: "Add employee", disabled: false) {
                        showSheetWrapper.showSheet = true
                    }
                    .frame(width: 286)
                    .padding(.bottom, 16)
                }
            }
        } else {
            EmployeesEmptyView()
        }
    }
}

#Preview {
    EmployeesView(viewModel: EmployeesViewModel(employeesData: EmployeesData(dataManager: DataManager())))
}


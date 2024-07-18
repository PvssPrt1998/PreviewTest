//
//  RepairView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 11.07.2024.
//

import SwiftUI

struct RepairView: View {
    
    weak var container: RepairContainer?
    
    @ObservedObject var viewModel: RepairViewModel
    
    class ShowSheetWrapper: ObservableObject {
        @Published var showSheet = false
    }
    
    @State var showRepairTotalCostAlert = false
    
    @StateObject var showSheetWrapper = ShowSheetWrapper()
    
    var body: some View {
        ZStack {
            BackgroundContainerView {
                VStack(spacing: 20) {
                    RepairTotalCostView(value: viewModel.totalCost) {
                        showRepairTotalCostAlert = true
                    }
                    VStack(spacing: 10) {
                        HStack {
                            TextCustom(text: "Repair", size: 20, weight: .semibold, color: .textFieldText)
                            Spacer()
                        }
                        repairTableView()
                    }
                }
                .sheet(isPresented: $showSheetWrapper.showSheet, content: {
                    container?.repairAddView()
                })
                .environmentObject(showSheetWrapper)
            }
            if showRepairTotalCostAlert {
                ZStack {
                    Color.black.opacity(0.35).ignoresSafeArea()
                    TextFieldAlert(text: $viewModel.totalCostText) {
                        viewModel.setTotalCost()
                        showRepairTotalCostAlert = false
                    }
                }
            }
            VStack {
                Spacer()
                Divider()
            }
        }
    }
    
    @ViewBuilder private func repairTableView() -> some View {
        if viewModel.repairsExists {
            ZStack {
                container?.repairTableView()
                VStack {
                    Spacer()
                    AddItemViewButton(title: "Add info Repair", disabled: false) {
                        showSheetWrapper.showSheet = true
                    }
                    .frame(width: 286)
                    .padding(.bottom, 16)
                }
            }
            
        } else {
            RepairEmptyView()
        }
    }
}

#Preview {
    RepairContainer(RepairViewModelFactory(repairData: RepairData(dataManager: DataManager()))).repairView()
}

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
    
    @State var showAddRepairView: Bool = false
    
    var body: some View {
        BackgroundContainerView {
            VStack(spacing: 20) {
                RepairTotalCostView(value: 10) {
                    
                }
                VStack(spacing: 10) {
                    HStack {
                        TextCustom(text: "Repair", size: 20, weight: .semibold, color: .textFieldText)
                        Spacer()
                    }
                    repairTableView()
                }
            }
            .sheet(isPresented: $showAddRepairView, content: {
                container?.repairAddView($showAddRepairView)
            })
        }
    }
    
    @ViewBuilder private func repairTableView() -> some View {
        if viewModel.repairsExists {
            container?.repairTableView()
        } else {
            RepairEmptyView(showAddRepairView: $showAddRepairView)
        }
    }
}

#Preview {
    RepairContainer(RepairViewModelFactory()).repairView()
}

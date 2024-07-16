//
//  RepairContainer.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 14.07.2024.
//

import SwiftUI

final class RepairContainer {
    
    let repairViewModelFactory: RepairViewModelFactory
    
    let repairData: RepairData = RepairData()
    
    init(_ repairViewModelFactory: RepairViewModelFactory) {
        self.repairViewModelFactory = repairViewModelFactory
    }
    
    @ViewBuilder func repairView() -> some View {
        RepairView(container: self, viewModel: repairViewModelFactory.makeRepairViewModel())
    }
    
    @ViewBuilder func repairTableView() -> some View {
        RepairTableView(viewModel: repairViewModelFactory.makrRepairTableViewModel())
    }
    
    @ViewBuilder func repairAddView(_ showSheet: Binding<Bool>) -> some View {
        RepairAddView(viewModel: repairViewModelFactory.makeRepairAddViewModel(), showSheet: showSheet)
    }
}


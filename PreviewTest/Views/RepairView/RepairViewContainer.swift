//
//  RepairContainer.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 14.07.2024.
//

import SwiftUI

final class RepairViewContainer {
    
    let repairData: RepairData = RepairData()
    
    @ViewBuilder func repairView() -> some View {
        RepairView(container: self, viewModel: RepairViewModel(repairData: repairData))
    }
    
    @ViewBuilder func repairTableView() -> some View {
        RepairTableView(viewModel: RepairTableViewModel(repairData: repairData))
    }
    
    @ViewBuilder func repairAddView() -> some View {
        RepairAddView(viewModel: RepairAddViewModel())
    }
}



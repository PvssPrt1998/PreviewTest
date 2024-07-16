//
//  RepairsViewModelFactory.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 15.07.2024.
//

import Foundation

final class RepairViewModelFactory {
    
    let repairData = RepairData()
    
    func makeRepairAddViewModel() -> RepairAddViewModel {
        RepairAddViewModel(repairData: repairData)
    }
    
    func makeRepairViewModel() -> RepairViewModel {
        RepairViewModel(repairData: repairData)
    }
    
    func makrRepairTableViewModel() -> RepairTableViewModel {
        RepairTableViewModel(repairData: repairData)
    }
}

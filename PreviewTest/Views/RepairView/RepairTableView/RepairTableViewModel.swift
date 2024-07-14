//
//  RepairTableViewModel.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 14.07.2024.
//

import Foundation
import Combine

final class RepairTableViewModel: ObservableObject {
    
    let repairData: RepairData
    
    var repairsCount: Int {
        repairData.repairs.count
    }
    
    var max: Int = 0
    
    var repairDataCancellable: AnyCancellable?
    
    init(repairData: RepairData) {
        self.repairData = repairData
        
        
        repairDataCancellable = repairData.$repairs.sink { [weak self] _ in
            self?.calcMax()
            self?.objectWillChange.send()
        }
    }
    
    func getRepair(by index: Int) -> Repair {
        repairData.repairs[index]
    }
    
    func calcMax() {
        if !repairData.repairs.isEmpty {
            max = repairData.repairs.max(by: { $0.cost < $1.cost })!.cost
        } else { max = 0 }
    }
}

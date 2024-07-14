//
//  RepairViewModel.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 11.07.2024.
//

import Foundation
import Combine

final class RepairViewModel: ObservableObject {
    
    let repairData: RepairData
    
    var repairsExists: Bool {
        repairData.repairs.count > 0
    }
    
    var repairDataCancellable: AnyCancellable?
    
    init(repairData: RepairData) {
        self.repairData = repairData
        
        repairDataCancellable = repairData.$repairs.sink { [weak self] _ in
            self?.objectWillChange.send()
        }
    }
}

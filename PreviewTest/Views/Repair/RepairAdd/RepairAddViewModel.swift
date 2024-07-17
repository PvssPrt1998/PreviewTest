//
//  RepairAddViewModel.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 14.07.2024.
//

import Foundation

final class RepairAddViewModel: ObservableObject {
    
    let repairData: RepairData
    
    @Published var nameText = "" {
        didSet {
            allEnteredCheck()
        }
    }
    @Published var costText = "" {
        didSet {
            costValidate(oldValue: oldValue)
            allEnteredCheck()
        }
    }
    
    var disabled: Bool = true
    
    init(repairData: RepairData) {
        self.repairData = repairData
    }
    
    func addButtonPressed() {
        guard let cost = Int(costText) else { return }
        repairData.repairs.append(Repair(title: nameText, cost: cost))
    }
    
    private func allEnteredCheck() {
        var disabled = false
        if nameText == "" || costText == ""{
            disabled = true
        }
        self.disabled = disabled
    }
    
    func costValidate(oldValue: String) {
        if let speed = Int(costText) {
            //add prefix $
        } else {
            costText = oldValue
        }
    }
}

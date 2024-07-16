//
//  RepairAddViewModel.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 14.07.2024.
//

import Foundation

final class RepairAddViewModel: ObservableObject {
    
    let repairData: RepairData
    
    @Published var textFields: Array<TextField> = [
        TextField(text: "", placeholder: "Enter name", isFirstResponder: false),
        TextField(text: "", placeholder: "Enter cost", isFirstResponder: false)
    ]
    
    init(repairData: RepairData) {
        self.repairData = repairData
    }
    
    func addKartingPlace() {
        guard let cost = Int(textFields[1].text) else { return }
        repairData.repairs.append(Repair(title: textFields[0].text, cost: cost))
    }
}

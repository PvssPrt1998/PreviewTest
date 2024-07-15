//
//  RepairData.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 14.07.2024.
//

import Foundation

final class RepairData: ObservableObject {
    @Published var repairs: Array<Repair> = [
        Repair(title: "repair1", cost: 10),
        Repair(title: "repair2", cost: 1000),
        Repair(title: "repair3", cost: 10000),
        Repair(title: "repair4", cost: 100000),
        Repair(title: "repair5", cost: 10000),
        Repair(title: "repair6", cost: 10000),
        Repair(title: "repair7", cost: 1000000000),
        Repair(title: "repair8", cost: 10000)
    ]
}

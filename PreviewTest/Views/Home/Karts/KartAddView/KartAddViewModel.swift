//
//  KartAddViewModel.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 15.07.2024.
//

import Foundation

final class KartAddViewModel: ObservableObject {
    
    @Published var nameText = "" {
        didSet {
            allEnteredCheck()
        }
    }
    @Published var quantityText = "" {
        didSet {
            allEnteredCheck()
        }
    }
    @Published var speedText = "" {
        didSet {
            allEnteredCheck()
        }
    }
    
    var disabled: Bool = true
    @Published var imageData: Data?
    
    let kartData: KartData
    
    init(kartData: KartData) {
        self.kartData = kartData
    }
    
    func addButtonPressed() {
        guard let imageData = imageData, let quantity = Int(quantityText), let speed = Int(speedText) else { return }
        kartData.karts.append(Kart(pic: imageData, title: nameText, quantity: quantity, maxSpeed: speed))
    }
    
    private func allEnteredCheck() {
        var disabled = false
        if nameText == "" || quantityText == "" || speedText == "" {
            disabled = true
        }
        self.disabled = disabled
    }
}

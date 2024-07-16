//
//  KartAddViewModel.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 15.07.2024.
//

import Foundation

final class KartAddViewModel: ObservableObject {
    
    @Published var nameField = TextField(text: "", placeholder: "Enter name", isFirstResponder: false)
    @Published var quantityField = TextField(text: "", placeholder: "Enter quantity", isFirstResponder: false)
    @Published var speedField = TextField(text: "", placeholder: "Enter maximum speed", isFirstResponder: false)
    
    var disabled: Bool = true
    
    let kartData: KartData
    
    init(kartData: KartData) {
        self.kartData = kartData
    }
    
    func addKart(imageData: Data?) {
        guard let imageData = imageData, let quantity = Int(textFields[1].text), let maxSpeed = Int(textFields[2].text) else { return }
        kartData.karts.append(Kart(pic: imageData, title: textFields[0].text, quantity: quantity, maxSpeed: maxSpeed))
    }
    
    func validation(oldValueQuantity: String, oldValueSpeed: String) {
        
        if let value = Int(textFields[1].text) {} else {
            //print("quantity")
            if textFields[1].text != "" {
                textFields[1].text = oldValueQuantity
            }
        }
        if let value = Int(textFields[2].text) {
            print("speedNew")
            textFields[2].text = "\(value) km/h."
        } else {
            
            if textFields[2].text != "" {
                print("speedMustMeOLD")
                textFields[2].text = oldValueSpeed
                print(textFields[2].text)
            }
        }
    }
}

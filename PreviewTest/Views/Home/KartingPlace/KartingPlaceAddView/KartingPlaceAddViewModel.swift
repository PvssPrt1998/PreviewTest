//
//  KartingPlaceAddViewModel.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 15.07.2024.
//

import Foundation

final class KartingPlaceAddViewModel: ObservableObject {
    
    let kartData: KartData
    
    @Published var textFields: Array<TextField> = [
        TextField(text: "", placeholder: "Enter name", isFirstResponder: false),
        TextField(text: "", placeholder: "Enter address", isFirstResponder: false)
    ]
    
    init(kartData: KartData) {
        self.kartData = kartData
    }
    
    func addKartingPlace(imageData: Data?) {
        guard let imageData = imageData else { return }
        kartData.kartingPlace = KartingPlace(pic: imageData, title: textFields[0].text, address: textFields[1].text)
    }
}

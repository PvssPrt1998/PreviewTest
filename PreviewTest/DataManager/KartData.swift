//
//  KartsData.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 15.07.2024.
//

import SwiftUI

final class KartData: ObservableObject {
    
    private weak var dataManager: DataManager?
    
    @Published var kartingPlace: KartingPlace?// = KartingPlace(pic: "car", title: "Title", address: "Address")
    
    @Published var karts: Array<Kart> = [
//        Kart(pic: UIImage(systemName: "car")!.pngData()!, title: "title1", quantity: 1, maxSpeed: 1),
//        Kart(pic: UIImage(systemName: "car")!.pngData()!, title: "title2", quantity: 1, maxSpeed: 1),
//        Kart(pic: UIImage(systemName: "car")!.pngData()!, title: "title3", quantity: 1, maxSpeed: 1),
//        Kart(pic: UIImage(systemName: "car")!.pngData()!, title: "title4", quantity: 1, maxSpeed: 1),
//        Kart(pic: UIImage(systemName: "car")!.pngData()!, title: "title5", quantity: 1, maxSpeed: 1),
//        Kart(pic: UIImage(systemName: "car")!.pngData()!, title: "title6", quantity: 1, maxSpeed: 1),
//        Kart(pic: UIImage(systemName: "car")!.pngData()!, title: "title7", quantity: 1, maxSpeed: 1)
    ]
    
    init(dataManager: DataManager) {
        self.dataManager = dataManager
    }
    
    func setKartingPlace(_ kartingPlace: KartingPlace) {
        DispatchQueue.main.async { [weak self] in
            self?.dataManager?.localStorage.saveKartingPlace(kartingPlace)
        }
        self.kartingPlace = kartingPlace
    }
    
    func setKart(_ kart: Kart) {
        DispatchQueue.main.async { [weak self] in
            self?.dataManager?.localStorage.saveKart(kart)
        }
        self.karts.append(kart)
    }
}

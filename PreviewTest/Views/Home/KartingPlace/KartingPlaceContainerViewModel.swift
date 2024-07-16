//
//  KartingPlaceContainerViewModel.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 15.07.2024.
//

import Foundation
import Combine

final class KartingPlaceContainerViewModel: ObservableObject {
    
    let kartData: KartData
    
    var isKartingPlaceExists: Bool {
        kartData.kartingPlace != nil ? true : false
    }
    
    private var kartDataCancellable: AnyCancellable?
    
    init(kartData: KartData) {
        self.kartData = kartData
        kartDataCancellable = kartData.$kartingPlace.sink { [weak self] karts in
            self?.objectWillChange.send()
        }
    }
    
}

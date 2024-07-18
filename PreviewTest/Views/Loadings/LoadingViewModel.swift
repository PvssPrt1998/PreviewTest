//
//  LoadingViewModel.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 18.07.2024.
//

import Foundation
import Combine

final class LoadingViewModel: ObservableObject {
    
    let loaded = PassthroughSubject<Bool, Never>()
    
    let dataManager: DataManager
    
    private var valueCancellable: AnyCancellable?
    private var dataLoadedCancellable: AnyCancellable?
    
    var value: Double = 0
    
    init(dataManager: DataManager) {
        self.dataManager = dataManager
        
        dataManager.loadData()
        
        valueCancellable = dataManager.$value.sink { [weak self] value in
            self?.value = value
            self?.objectWillChange.send()
        }
        dataLoadedCancellable = dataManager.$dataLoaded.sink { [weak self] value in
            if value {
                self?.loaded.send(true)
            }
        }
    }
}

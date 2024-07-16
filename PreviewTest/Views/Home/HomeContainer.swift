//
//  HomeContainer.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 13.07.2024.
//

import SwiftUI

final class HomeContainer {
    
    let kartViewModelFactory: KartViewModelFactory
    
    init(_ kartViewModelFactory: KartViewModelFactory) {
        self.kartViewModelFactory = kartViewModelFactory
    }
    
    func homeView() -> some View {
        HomeView(container: self)
    }
    
    func kartingPlaceContainerView() -> some View {
        KartingPlaceContainerView(self, viewModel: kartViewModelFactory.makeKartingPlaceContainerViewModel())
    }
    
    func kartingPlaceView() -> some View {
        KartingPlaceView(viewModel: kartViewModelFactory.makeKartingPlaceViewModel())
    }
    
    func kartingPlaceAddView(_ showKartingPlaceAddView: Binding<Bool>) -> some View {
        KartingPlaceAddView(viewModel: kartViewModelFactory.makeKartingPlaceAddViewModel(), showKartingPlaceAddView: showKartingPlaceAddView)
    }
    
    func buildKartsView() -> some View {
        KartsView(container: self, viewModel: kartViewModelFactory.makeKartsViewModel())
    }
    
    func buildKartCollectionView() -> some View {
        KartCollectionView(viewModel: kartViewModelFactory.makeKartCollectionViewModel())
    }
    
    func buildKartAddView(_ showAddKartView: Binding<Bool>) -> some View {
        KartAddView(viewModel: kartViewModelFactory.makeKartAddViewModel(), showKartAddView: showAddKartView)
    }
    
    
}

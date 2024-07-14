//
//  HomeContainer.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 13.07.2024.
//

import SwiftUI

final class HomeContainer {
    
    let sheetPaddingValuesStorage: SheetPaddingValuesStorage
    
    init(sheetPaddingValuesStorage: SheetPaddingValuesStorage) {
        self.sheetPaddingValuesStorage = sheetPaddingValuesStorage
    }
    
    @ViewBuilder func buildHomeView() -> some View {
        HomeView(container: self)
    }
    
    @ViewBuilder private func buildKartsView() -> some View {
        KartsView(container: self)
    }
    
    @ViewBuilder func buildKartingPlaceView() -> some View {
        KartingPlaceView()
    }
    
    @ViewBuilder func buildSheetKartsViewView() -> some View {
        SheetView(paddingValuesStorage: sheetPaddingValuesStorage) {
            buildKartsView()
        }
    }
    
    @ViewBuilder func buildKartCollectionView() -> some View {
        KartCollectionView()
    }
}

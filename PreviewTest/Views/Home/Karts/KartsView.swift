//
//  KartsView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 12.07.2024.
//

import SwiftUI

struct KartsView: View {
    
    weak var container: HomeContainer?
    
    @ObservedObject var viewModel: KartsViewModel
    
    var body: some View {
        SheetView(title: "My go-karts",fixed: viewModel.sheetFixed) {
            if viewModel.isKartsEmpty {
                EmptyKartView()
            } else {
                container?.buildKartCollectionView()
            }
        }
    }
}

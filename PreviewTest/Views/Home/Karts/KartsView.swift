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
    
    @State var showAddKartsView: Bool = false
    
    var body: some View {
        SheetView(title: "My go-karts",fixed: viewModel.sheetFixed) {
            if viewModel.isKartsEmpty {
                EmptyKartView(showAddKartView: $showAddKartsView)
            } else {
                container?.buildKartCollectionView()
            }
        }
        .sheet(isPresented: $showAddKartsView) {
            container?.buildKartAddView($showAddKartsView)
        }
    }
}

#Preview {
    KartsView(viewModel: KartsViewModel(kartData: KartData()))
        .background(Color.bgMain)
}

//
//  KartCollectionView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 12.07.2024.
//

import SwiftUI

struct KartCollectionView: View {

    @ObservedObject var viewModel: KartCollectionViewModel
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible(), spacing: 12), GridItem(.flexible(), spacing: 0)], alignment: .center, spacing: 12) {
                ForEach(0..<viewModel.kartsCount, id: \.self) { index in
                    KartCollectionViewCell(kart: viewModel.getKart(by: index))
                }
            }
        }
        .cornerRadius(12, corners: [.topLeft, .topRight])
    }
}

#Preview {
    KartCollectionView(viewModel: KartCollectionViewModel(kartData: KartData()))
        .background(Color.bgMain)
}

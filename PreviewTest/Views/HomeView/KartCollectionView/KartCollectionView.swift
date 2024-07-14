//
//  KartCollectionView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 12.07.2024.
//

import SwiftUI

struct KartCollectionView: View {
    
    private let karts = [
        Kart(pic: "car", title: "title1", quantity: 1, maxSpeed: 1),
        Kart(pic: "car", title: "title2", quantity: 1, maxSpeed: 1),
        Kart(pic: "car", title: "title3", quantity: 1, maxSpeed: 1),
        Kart(pic: "car", title: "title4", quantity: 1, maxSpeed: 1),
        Kart(pic: "car", title: "title5", quantity: 1, maxSpeed: 1),
        Kart(pic: "car", title: "title6", quantity: 1, maxSpeed: 1),
        Kart(pic: "car", title: "title7", quantity: 1, maxSpeed: 1)
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible(), spacing: 5), GridItem(.flexible(), spacing: 5)]) {
                ForEach(karts, id: \.self) { kart in
                    KartCollectionViewCell(kart: kart)
                }
            }
        }
    }
}

#Preview {
    KartCollectionView()
}

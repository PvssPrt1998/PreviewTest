//
//  KartsView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 12.07.2024.
//

import SwiftUI

struct KartsView: View {
    
    weak var container: HomeContainer?
    
    var body: some View {
        VStack(spacing: 12) {
            HStack {
                Text("My go-karts")
                    .font(Font(UIFont.fontWith(size: 22, weight: .bold)))
                    .foregroundColorCustom(.white)
                Spacer()
            }
            
            if let container = container {
                container.buildKartCollectionView()
            }
        }
    }
}

#Preview {
    KartsView()
        .background(Color.bgSecond)
}

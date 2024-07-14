//
//  KartCollectionViewCell.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 12.07.2024.
//

import SwiftUI

struct KartCollectionViewCell: View {
    
    let kart: Kart
    
    private let width: CGFloat = 161
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: kart.pic)
                .resizable()
                .scaledToFit()
                .frame(height: 140)
                .background(Color.white)
                .clipShape(.rect(cornerRadius: 8))
            VStack(spacing: 16) {
                Text(kart.title)
                    .font(Font(UIFont.fontWith(size: 15, weight: .semibold)))
                    .foregroundColorCustom(.white)
                
                VStack(spacing: 8) {
                    HStack {
                        Text("Quantity")
                            .font(Font(UIFont.fontWith(size: 12, weight: .regular)))
                            .foregroundColorCustom(.textTertiary)
                        Spacer()
                        Text("\(kart.quantity)")
                            .font(Font(UIFont.fontWith(size: 12, weight: .regular)))
                            .foregroundColorCustom(.white)
                    }
                    HStack {
                        Text("Maximum speed")
                            .font(Font(UIFont.fontWith(size: 12, weight: .regular)))
                            .foregroundColorCustom(.textTertiary)
                        Spacer()
                        Text("\(kart.maxSpeed)")
                            .font(Font(UIFont.fontWith(size: 12, weight: .regular)))
                            .foregroundColorCustom(.white)
                    }
                }
            }.padding(.horizontal, 6)
           
        }
        .padding(EdgeInsets(top: 6, leading: 6, bottom: 12, trailing: 6))
        .background(Color.bgLight)
        .clipShape(.rect(cornerRadius: 12))
    }
}

#Preview {
    KartCollectionViewCell(kart: Kart(pic: "car", title: "title1", quantity: 8, maxSpeed: 30))
}


//
//  KartingPlaceView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 12.07.2024.
//

import SwiftUI

struct KartingPlaceView: View {
    var body: some View {
        VStack {
            ZStack {
                VStack {
                    Image(systemName: "car")
                        .resizable()
                        .background(Color.gray) //TODO: - REMOVE
                }
                .overlay(
                    LinearGradient(gradient: Gradient(colors: [Color.gradient1.opacity(0), Color.gradient1.opacity(1)]), startPoint: .top, endPoint: .bottom)
                )
                VStack(alignment: .leading) {
                    Spacer()
                    HStack {
                        Text("Name karting")
                            .font(Font(UIFont.fontWith(size: 28, weight: .bold)))
                            .foregroundColorCustom(.white)
                        Spacer()
                    }
                    
                    HStack {
                        Text("7 Holly Squares Lake Sarahstad BL9 8LE")
                            .font(Font(UIFont.fontWith(size: 16, weight: .regular)))
                            .foregroundColorCustom(.textTertiary)
                        Spacer()
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 39, trailing: 16))
            }
            .frame(height: 320)
            Spacer()
        }
        .ignoresSafeArea()
        
    }
        
}

#Preview {
    KartingPlaceView()
}

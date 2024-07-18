//
//  KartingPlaceView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 12.07.2024.
//

import SwiftUI

struct KartingPlaceView: View {
    
    @ObservedObject var viewModel: KartingPlaceViewModel
    
    var body: some View {
        VStack {
            ZStack {
                setImage()
                .resizable()
                .scaledToFit()
                .overlay(
                    LinearGradient(gradient: Gradient(colors: [Color.gradient1.opacity(0), Color.gradient1.opacity(1)]), startPoint: .top, endPoint: .bottom)
                )
                VStack(alignment: .leading) {
                    Spacer()
                    TextCustom(text: viewModel.kartingPlace?.title ?? "", size: 28, weight: .bold, color: .white)
                    TextCustom(text: viewModel.kartingPlace?.address ?? "", size: 16, weight: .regular, color: .textTertiary)
                }.frame(maxWidth: .infinity, alignment: .leading)
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 39, trailing: 16))
            }
            .frame(height: 320)
            Spacer()
        }
        .ignoresSafeArea(.container, edges: .top)
    }
    
    func setImage() -> Image {
        guard let imageData = viewModel.kartingPlace?.pic, let image = UIImage(data: imageData) else { return Image(systemName: "car") }
        return Image(uiImage: image)
    }
        
}

#Preview {
    KartingPlaceView(viewModel: KartingPlaceViewModel(kartData: KartData(dataManager: DataManager())))
}

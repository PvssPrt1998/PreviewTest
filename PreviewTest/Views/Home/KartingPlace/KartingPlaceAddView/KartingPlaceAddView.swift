//
//  KartingPlaceAddView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 15.07.2024.
//

import SwiftUI

struct KartingPlaceAddView: View {
    
    @ObservedObject var viewModel: KartingPlaceAddViewModel
    
    @Binding var showKartingPlaceAddView: Bool
    
    var body: some View {
        AddItemView(title: "Edit basic information",
                    buttonTitle: "Save",
                    withImage: true,
                    showSheet: $showKartingPlaceAddView, textFields: $viewModel.textFields) { imageData in
            viewModel.addKartingPlace(imageData: imageData)
        }
    }
}

//#Preview {
//    KartingPlaceAddView(viewModel: KartingPlaceAddViewModel(kartData: KartData()))
//}

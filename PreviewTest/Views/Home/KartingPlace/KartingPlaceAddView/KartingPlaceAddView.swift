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
        SheetBackgroundContainerView(title: "Edit basic information") {
            VStack(spacing: 20) {
                AddItemImage(imageData: $viewModel.imageData)
                TextFieldCustom(text: $viewModel.nameText, placeholder: "Enter name")
                    .onTapGesture {}
                TextFieldCustom(text: $viewModel.addressText, placeholder: "Enter address")
                    .onTapGesture {}
                AddItemViewButton(title: "Add", disabled: viewModel.disabled) {
                    viewModel.saveButtonPressed()
                    showKartingPlaceAddView = false
                }
                Spacer()
            }
        }.onTapGesture {
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to:nil, from:nil, for:nil)
        }
    }
}

//
//  KartAddView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 15.07.2024.
//

import SwiftUI
import Combine

struct KartAddView: View {
    
    @ObservedObject var viewModel: KartAddViewModel
    @Binding var showKartAddView: Bool
    
    var body: some View {
        SheetBackgroundContainerView(title: "New go-kart") {
            VStack(spacing: 20) {
                AddItemImage(imageData: $viewModel.imageData)
                
                TextFieldCustom(text: $viewModel.nameText, placeholder: "Enter name")
                    .onTapGesture {}
                TextFieldCustom(text: $viewModel.quantityText, placeholder: "Enter quantity")
                    .onReceive(Just(viewModel.quantityText), perform: { newValue in
                        quantityValidation(newValue)
                    })
                    .onTapGesture {}
                TextFieldCustom(text: $viewModel.speedText, placeholder: "Enter maximum speed")
                    .onReceive(Just(viewModel.speedText), perform: { newValue in
                        speedValidation(newValue)
                    })
                    .onTapGesture {}
                AddItemViewButton(title: "Add", disabled: viewModel.disabled) {
                    viewModel.addButtonPressed()
                    showKartAddView = false
                }
                Spacer()
            }
        }.onTapGesture {
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to:nil, from:nil, for:nil)
        }
    }
    
    private func quantityValidation(_ newValue: String) {
        let filtered = newValue.filter { Set("0123456789").contains($0) }
        if filtered != newValue {
            self.viewModel.quantityText = filtered
        }
    }
    
    private func speedValidation(_ newValue: String) {
        let str = newValue.replacingOccurrences(of: " km/h.", with: "")
        let filtered = str.filter { Set("0123456789").contains($0) }
        var postfix = ""
        if newValue != "" { postfix = " km/h."}
//        if filtered != newValue {
//            self.viewModel.speedText = filtered + postfix
//        } else {
//            self.viewModel.speedText = newValue + postfix
//        }
    }
}

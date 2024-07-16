//
//  KartAddView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 15.07.2024.
//

import SwiftUI

struct KartAddView: View {
    
    @ObservedObject var viewModel: KartAddViewModel
    
    @Binding var showKartAddView: Bool
    
    @State var imageData: Data?
//
//    var body: some View {
//        AddItemView(title: "New go-kart",
//                    buttonTitle: "Add",
//                    withImage: true,
//                    showSheet: $showKartAddView, 
//                    textFields: $viewModel.textFields) { imageData in
//            viewModel.addKart(imageData: imageData)
//        }
//    }
    
    var body: some View {
        SheetBackgroundContainerView(title: "New go-kart") {
            VStack(spacing: 20) {
                AddItemImage(imageData: $imageData)
                
                TextFieldCustom(text: <#T##Binding<String>#>, isFirstResponder: <#T##Binding<Bool>#>, placeholder: <#T##String#>)
                
                ForEach(0..<textFields.count, id: \.self) { index in
                    TextFieldCustom(text: $textFields[index].text,
                                    isFirstResponder: $textFields[index].isFirstResponder,
                                    placeholder: textFields[index].placeholder)
                    .autocorrectionDisabled(true)
                    .onChange(of: textFields[index].text, perform: { newValue in
                        allEnteredCheck()
                    })
                    .onTapGesture {}
                }
                AddItemViewButton(title: "Add", disabled: viewModel.disabled) {
                    showKartAddView = false
                }
                Spacer()
            }
        }.onTapGesture {
            unfocuseAll()
        }
    }
    
    private func unfocuseAll() {
        for index in 0..<textFields.count {
            textFields[index].isFirstResponder = false
        }
    }
    
    private func allEnteredCheck() {
        var disabled = false
        textFields.forEach { textField in
            if textField.text == "" {
                disabled = true
                return
            }
        }
        self.disabled = disabled
    }
}
//
//#Preview {
//    KartAddView(viewModel: KartAddViewModel(kartData: KartData()))
//}

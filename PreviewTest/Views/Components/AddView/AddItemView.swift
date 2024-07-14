//
//  NewView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 14.07.2024.
//

import SwiftUI

struct AddItemView: View {
    
    let title: String
    let buttonTitle: String
    @Binding var textFields: Array<TextField>
    
    var body: some View {
        SheetBackgroundContainerView(title: title) {
            VStack(spacing: 20) {
                ForEach(0..<textFields.count, id: \.self) { index in
                    TextFieldCustom(text: $textFields[index].text,
                                    isFirstResponder: $textFields[index].isFirstResponder,
                                    placeholder: textFields[index].placeholder)
                    .onTapGesture {}
                }
                AddItemViewButton(title: buttonTitle, disabled: true) {
                    
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
}

struct AddItemView_Preview: PreviewProvider {
    
    @State static var textFields: Array<TextField> = [
        TextField(text: "", placeholder: "Enter name", isFirstResponder: false),
        TextField(text: "", placeholder: "Enter post", isFirstResponder: false),
        TextField(text: "", placeholder: "Enter working hours", isFirstResponder: false)
    ]
    
    static var previews: some View {
        AddItemView(title: "title", buttonTitle: "buttonTitle", textFields: $textFields)
    }
    
}

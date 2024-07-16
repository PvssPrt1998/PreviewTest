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
    @State var disabled: Bool = true
    var withImage: Bool
    @State var imageData: Data?
    @Binding var showSheet: Bool
    @Binding var textFields: Array<TextField>
    
    let action: (_ imageData: Data?) -> Void
    
    var body: some View {
        SheetBackgroundContainerView(title: title) {
            VStack(spacing: 20) {
                if withImage {
                    AddItemImage(imageData: $imageData)
                }
                
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
                AddItemViewButton(title: buttonTitle, disabled: $disabled) {
                    action(imageData)
                    showSheet = false
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

struct AddItemView_Preview: PreviewProvider {
    @State static var disabled: Bool = true
    @State static var showSheet: Bool = true
    
    @State static var textFields: Array<TextField> = [
        TextField(text: "", placeholder: "Enter name", isFirstResponder: false),
        TextField(text: "", placeholder: "Enter post", isFirstResponder: false),
        TextField(text: "", placeholder: "Enter working hours", isFirstResponder: false)
    ]
    
    static var previews: some View {
        AddItemView(title: "title", buttonTitle: "buttonTitle", withImage: false, showSheet: $showSheet, textFields: $textFields, action: { _  in })
    }
}

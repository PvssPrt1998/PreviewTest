//
//  TextFieldCustom.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 14.07.2024.
//

import SwiftUI

struct TextFieldCustom: View {
    
    @Binding var text: String
    @Binding var isFirstResponder: Bool

    let placeholder: String
    
    var body: some View {
        LegacyTextField(text: $text, isFirstResponder: $isFirstResponder)
            .fontCustom(size: 15, weight: .regular, color: .textFieldText)
            .background(
                placeholderView()
            )
            .padding(EdgeInsets(top: 11, leading: 16, bottom: 11, trailing: 0))
            .background(Color.bgLight)
            .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(.specialSeparator, lineWidth: 1)
            )
            .clipShape(.rect(cornerRadius: 12))
            .frame(height: 45)
            .onTapGesture {isFirstResponder = true}
    }
    
    @ViewBuilder func placeholderView() -> some View {
        if !isFirstResponder || text == "" {
            Text((isFirstResponder || text != "") ? "" : placeholder)
                .fontCustom(size: 15, weight: .regular, color: .specialPlaceholder)
                .frame(maxWidth: .infinity, alignment: .leading)
        } else {
            EmptyView()
        }
    }
}

struct TextFieldCustom_Preview: PreviewProvider {
    
    @State static var text: String = ""
    @State static var isFirstResponder: Bool = false
    
    static var previews: some View {
        TextFieldCustom(text: $text, isFirstResponder: $isFirstResponder, placeholder: "Placeholder")
            .padding(20)
            .background(Color.bgMain)
    }
}

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
        //TextField("", text: $text)
            .fontCustom(size: 15, weight: .regular, color: .textFieldText)
            .background(
                Text(isFirstResponder ? "" : placeholder)
                    .fontCustom(size: 15, weight: .regular, color: .placeholder)
            )
            .padding(EdgeInsets(top: 11, leading: 16, bottom: 11, trailing: 0))
            .background(Color.bgLight)
            .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(.separator, lineWidth: 1)
            )
            .clipShape(.rect(cornerRadius: 12))
            .frame(height: 45)
    }
}

struct TextFieldCustom_Preview: PreviewProvider {
    
    @State static var text: String = ""
    @State static var isFirstResponder: Bool = false
    
    static var previews: some View {
        TextFieldCustom(text: $text, isFirstResponder: $isFirstResponder, placeholder: "Placholder")
            .padding(20)
            .background(Color.bgMain)
    }
}

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
                HStack {
                    Text(isFirstResponder ? "" : placeholder)
                        .fontCustom(size: 15, weight: .regular, color: .placeholder)
                    Spacer()
                }
            )
            //.onTapGesture {}
            .padding(EdgeInsets(top: 11, leading: 16, bottom: 11, trailing: 0))
            .background(Color.bgLight)
            .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(.separator, lineWidth: 1)
            )
            .clipShape(.rect(cornerRadius: 12))
            .frame(height: 45)
            .onTapGesture {isFirstResponder = true}
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

//
//  AddItemViewButton.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 14.07.2024.
//

import SwiftUI

struct AddItemViewButton: View {
    
    let title: String
    var disabled: Bool
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            HStack {
                Spacer()
                Text(title)
                    .font(.system(size: 17, weight: .regular))
                    .foregroundColorCustom(disabled ? Color.textNotActive : Color.white)
                    .padding(EdgeInsets(top: 14, leading: 20, bottom: 14, trailing: 20))
                Spacer()
            }
        }
        .disabled(disabled)
        .background(disabled ? Color.textNotActive :Color.appPrimary)
        .clipShape(.rect(cornerRadius: 12))
    }
}

#Preview {
    AddItemViewButton(title: "title", disabled: false) {
    }
}

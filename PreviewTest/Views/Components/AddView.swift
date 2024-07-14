//
//  AddView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 12.07.2024.
//

import SwiftUI

struct AddView: View {
    
    let title: String
    let description: String
    let buttonTitle: String
    let showBackground: Bool
    let action: () -> Void
    
    var body: some View {
        VStack {
            Spacer()
            VStack(spacing: 17) {
                VStack(spacing: 4) {
                    TextCustom(text: title, size: 28, weight: .bold, color: .textMain)
                    TextCustom(text: description, size: 16, weight: .regular, color: .textSecond)
                }
                Button {
                    action()
                } label: {
                    Text(buttonTitle)
                        .font(.system(size: 15, weight: .regular))
                        .foregroundColorCustom(.white)
                        .padding(EdgeInsets(top: 7, leading: 14, bottom: 7, trailing: 14))
                        .background(Color.appPrimary)
                        .clipShape(.rect(cornerRadius: 40))
                }
            }
            .padding(26)
            .background(Color.bgLight)
            .clipShape(.rect(cornerRadius: 16))
            Spacer()
        }
    }
}

#Preview {
    AddView(title: "Add the data", description: "Indicate basic information", buttonTitle: "Add information", showBackground: true, action: {})
        .padding(50)
        .background(Color.bgMain)
}

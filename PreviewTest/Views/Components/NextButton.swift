//
//  BlueButton.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 11.07.2024.
//

import SwiftUI

struct NextButton: View {
    
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Text("Next")
                        .font(.system(size: 14, weight: .bold))
                        .foregroundColorCustom(.white)
                    Spacer()
                }
                Spacer()
            }
        }
        .frame(width: 160, height: 45)
        .background(Color.appPrimary)
        .clipShape(.rect(cornerRadius: 18))
    }
}

#Preview {
    NextButton(action: {})
        .frame(width: 160, height: 45)
}

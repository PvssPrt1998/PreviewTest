//
//  LogoUserLoadingViewBottomText.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 11.07.2024.
//

import SwiftUI

struct LogoUserLoadingViewLowerText: View {
    var body: some View {
        Text("WIN")
            .font(Font(UIFont.fontWith(size: 99, weight: .black, design: .rounded)))
            .foregroundColorCustom(.white)
            .shadow(color: .blueShadow, radius: 14.38, x: 7.92, y: 6.7)
    }
}

#Preview {
    LogoUserLoadingViewLowerText()
}

//
//  UserLoadingViewUpperText.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 11.07.2024.
//

import SwiftUI

struct LogoUserLoadingViewUpperText: View {
    var body: some View {
        Text("ONE WAY TO")
            .font(Font(UIFont.fontWith(size: 56, weight: .black, design: .rounded)))
            .foregroundColorCustom(.appPrimary)
            .shadow(color: .darkBlueShadow, radius: 4.88, x: 4.82, y: 3.44)
    }
}

#Preview {
    LogoUserLoadingViewUpperText()
}

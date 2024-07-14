//
//  LogoUserLoadingView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 11.07.2024.
//

import SwiftUI

struct LogoUserLoadingView: View {
    var body: some View {
        VStack(spacing: 0) {
            LogoUserLoadingViewUpperText()
            LogoUserLoadingViewLowerText()
        }
        .padding(.bottom, 182)
    }
}

#Preview {
    LogoUserLoadingView()
}

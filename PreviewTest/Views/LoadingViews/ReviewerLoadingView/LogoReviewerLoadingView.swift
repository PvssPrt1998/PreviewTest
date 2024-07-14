//
//  LogoReviewerLoadingView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 11.07.2024.
//

import SwiftUI

struct LogoReviewerLoadingView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Smart")
                .font(Font(UIFont.fontWith(size: 97, weight: .heavy, design: .rounded)))
                .foregroundColorCustom(.primary)
                .padding(.bottom, -34)
            Text("Karting")
                .font(Font(UIFont.fontWith(size: 97, weight: .heavy, design: .rounded)))
                .foregroundColorCustom(.white)
        }
        .padding(.bottom, 182)
    }
}

#Preview {
    LogoReviewerLoadingView()
        .background(Color.black)
}

//
//  InfoOnboardingView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 11.07.2024.
//

import SwiftUI

struct InfoOnboardingView: View {
    
    let title: String
    let caption: String
    
    let action: () -> Void
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title)
                .font(Font(UIFont.fontWith(size: 28, weight: .bold)))
                .foregroundColorCustom(.white)
            Text(caption)
                .font(Font(UIFont.fontWith(size: 17, weight: .regular)))
                .foregroundColorCustom(.caption)
                .padding(.bottom, 5)
            
            HStack {
                Spacer()
                NextButton(action: {})
            }
        }.padding(.horizontal, 15)
    }
}

#Preview {
    InfoOnboardingView(title: "Employees are under control", caption: "Place a bet on yourself", action: {})
        .background(Color.black)
}

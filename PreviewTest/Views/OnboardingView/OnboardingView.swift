//
//  OnboardingView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 11.07.2024.
//

import SwiftUI

struct OnboardingView: View {
    
    let title: String
    let caption: String
    let backgroundImageTitle: String
    
    let action: () -> Void
    
    var body: some View {
        ZStack {
            backgroundImage(backgroundImageTitle: backgroundImageTitle,
                            color: .darkBlue1)
            VStack {
                Spacer()
                InfoOnboardingView(title: title,
                                   caption: caption, action: {})
            }
        }
    }
}

#Preview {
    OnboardingView(title: "Employees are under control",
                   caption: "Place a bet on yourself",
                   backgroundImageTitle: ImageTitles.UserOnboardingBackground1.rawValue,
                   action: {})
        .background(Color.black)
}

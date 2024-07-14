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
    var blur: Bool
    
    @Environment(\.safeAreaInsets) private var safeAreaInsets
    
    var body: some View {
        ZStack {
            backgroundImage(backgroundImageTitle: backgroundImageTitle,
                            color: .darkBlue1)
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    Spacer()
                    Text(title)
                        .font(Font(UIFont.fontWith(size: 28, weight: .bold)))
                        .foregroundColorCustom(.white)
                    Text(caption)
                        .font(Font(UIFont.fontWith(size: 17, weight: .regular)))
                        .foregroundColorCustom(.caption)
                }
                .blur(radius: blur ? 3 : 0)
                .padding(EdgeInsets(top: 0, leading: 15, bottom: 55 + safeAreaInsets.bottom, trailing: 15))
                Spacer()
            }
        }
    }
}

#Preview {
    OnboardingView(title: "Employees are under control",
                   caption: "Place a bet on yourself",
                   backgroundImageTitle: ImageTitles.UserOnboardingBackground1.rawValue, blur: false)
        .background(Color.black)
}

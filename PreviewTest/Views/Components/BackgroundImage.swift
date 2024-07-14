//
//  backgroundImage.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 11.07.2024.
//

import SwiftUI

struct backgroundImage: View {
    
    let backgroundImageTitle: String
    let color: Color
    
    var body: some View {
        Image(backgroundImageTitle)
            .resizable()
            .background(color)
            //.ignoresSafeArea()
    }
}

#Preview {
    backgroundImage(backgroundImageTitle: ImageTitles.UserOnboardingBackground1.rawValue, color: Color.darkBlue1)
}

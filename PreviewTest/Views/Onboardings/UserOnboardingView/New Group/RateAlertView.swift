//
//  AlertView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 11.07.2024.
//

import SwiftUI
import StoreKit

struct RateAlertView: View {
    
    @State var filled = false
    
    let title: String
    let description: String
    let maxRating = 5
    let action: () -> Void
    
    var body: some View {
        
        VStack(alignment: .center) {
            VStack(spacing: 16) {
                Image(ImageTitles.AppLogo.rawValue)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .padding(.horizontal, 16)

                VStack(spacing: 0) {
                    Text(title)
                        .font(Font(UIFont.fontWith(size: 17, weight: .semibold)))
                        
                    Text(description)
                        .font(Font(UIFont.fontWith(size: 15, weight: .regular)))
                }
                .multilineTextAlignment(.center)
                .padding(.horizontal, 16)
            }
            Divider()
            HStack(spacing: 8) {
                ForEach(0..<5) { index in
                    StarView(filled: $filled) {
                        filled.toggle()
                    }
                }
            }
            .padding(.vertical, 11)
            Divider()
            Button {
                action()
            } label: {
                Text("Not now")
                    .font(Font(UIFont.fontWith(size: 17, weight: .regular)))
            }
        }
        .padding(EdgeInsets(top: 20, leading: 0, bottom: 11, trailing: 0))
        .frame(width: 269)
        .background(Color.alertBackground)
        .background(Color.white)
        .clipShape(.rect(cornerRadius: 16))
    }
}

#Preview {
    RateAlertView(title: "Review Store Review Controller?", description: "Tap a star to rate it on the App Store.", action: {})
}

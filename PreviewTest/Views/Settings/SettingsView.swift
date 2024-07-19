//
//  SettingsView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 11.07.2024.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        ZStack {
            BackgroundContainerView(title: "Settings") {
                VStack(spacing: 20) {
                    HStack(spacing: 20) {
                        SettingsButton(title: "Rate app", buttonImageTitle: "star.leadinghalf.filled") {
                            
                        }
                        SettingsButton(title: "Share app", buttonImageTitle: "square.and.arrow.up") {
                            
                        }
                    }
                    SettingsButton(title: "Usage Policy", buttonImageTitle: "list.bullet.rectangle.portrait") {
                        
                    }
                }
            }
            Divider().frame(maxHeight: .infinity, alignment: .bottom)
        }
    }
}

#Preview {
    SettingsView()
}

//
//  backgroundContainerView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 14.07.2024.
//

import SwiftUI

struct BackgroundContainerView<Content: View>: View {
    
    var title: String?
    let globalHorizontalPadding: CGFloat = 16
    
    @ViewBuilder let content: Content
    
    var body: some View {
        ZStack {
            Color.bgSecond.ignoresSafeArea()
            if let title = title {
                VStack {
                    TitleView(text: title, titlePlacement: .leading)
                        .padding(EdgeInsets(top: 3, leading: globalHorizontalPadding, bottom: 8, trailing: globalHorizontalPadding))
                    Spacer()
                }
                
            }
            VStack(spacing: 0) {
                if let title = title {
                    TitleView(text: title, titlePlacement: .leading).hidden()
                        .padding(EdgeInsets(top: 3, leading: globalHorizontalPadding, bottom: 8, trailing: globalHorizontalPadding))
                }
                content
                    .padding(EdgeInsets(top: 20, leading: globalHorizontalPadding, bottom: 0, trailing: globalHorizontalPadding))
                Spacer()
            }
        }
    }
}

#Preview {
    BackgroundContainerView(title: "Title") {
        Text("123")
    }
}

//
//  NavigationViewContainer.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 14.07.2024.
//

import SwiftUI

struct NavigationViewContainer<Content: View>: View {
    
    @ViewBuilder let content: Content
    
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                content
            }
        } else {
            NavigationView {
                content
            }
        }
    }
}

#Preview {
    NavigationViewContainer {
        Text("text")
    }
}

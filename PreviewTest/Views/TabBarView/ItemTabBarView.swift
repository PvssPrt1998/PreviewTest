//
//  ItemTabBarView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 11.07.2024.
//

import SwiftUI

struct ItemTabBarView: View {
    
    var imageTitle: String
    var text: String
    
    var body: some View {
        VStack {
            Image(systemName: imageTitle)
                .font(Font(UIFont.systemFont(ofSize: 18, weight: .medium)))
            Text(text)
                .font(Font(UIFont.systemFont(ofSize: 10, weight: .medium)))
        }
        //.environment(\.symbolVariants, .none) // используем это чтобы в TabView картинки не были закрашены
    }
}


#Preview {
    if #available(iOS 15.0, *) {
        ItemTabBarView(imageTitle: ImageTitles.tabItemGear.rawValue, text: "Home")
            .background {
                Color.bgMain
            }
    } else {
        ItemTabBarView(imageTitle: ImageTitles.tabItemGear.rawValue, text: "Home")
    }
}

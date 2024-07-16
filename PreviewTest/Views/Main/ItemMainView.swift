//
//  ItemTabBarView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 11.07.2024.
//

import SwiftUI

struct ItemMainView: View {
    
    var imageTitle: String
    var text: String
    
    var body: some View {
        VStack {
            TabViewImage(systemName: imageTitle)
                .fontCustom(size: 18, weight: .medium)
            Text(text)
                .font(.system(size: 10,weight: .medium))
        }
    }
}

//
//  ImageCustom.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 15.07.2024.
//

import SwiftUI

struct TabViewImage: View {
    
    let systemName: String
    
    var body: some View {
        if #available(iOS 15.0, *) {
            Image(systemName: systemName)
                .environment(\.symbolVariants, .none)
        } else {
            Image(systemName: systemName)
        }
    }
    
}

#Preview {
    TabViewImage(systemName: "Home")
}

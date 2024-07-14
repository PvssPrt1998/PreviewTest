//
//  ViewTitle.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 14.07.2024.
//

import SwiftUI

struct TitleView: View {
    
    let text: String
    
    var body: some View {
        HStack {
            VStack {
                Text(text)
                    .font(.system(size: 34, weight: .bold))
                    .foregroundColorCustom(.white)
                Spacer()
            }
            Spacer()
        }
        .padding(EdgeInsets(top: 3, leading: 16, bottom: 8, trailing: 16))
    }
}

#Preview {
    TitleView(text: "Employee")
}

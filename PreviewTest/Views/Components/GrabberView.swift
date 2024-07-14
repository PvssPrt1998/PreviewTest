//
//  GrabberView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 12.07.2024.
//

import SwiftUI

struct GrabberView: View {
    var body: some View {
        Color.textTertiary
            .opacity(0.12)
            .frame(width: 40, height: 5)
            .clipShape(.rect(cornerRadius: 19))
        
    }
}

#Preview {
    GrabberView()
        .padding(100)
        .background(Color.bgSecond)
    
}

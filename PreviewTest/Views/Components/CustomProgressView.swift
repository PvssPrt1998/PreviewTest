//
//  CustomProgressView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 11.07.2024.
//

import SwiftUI

struct CustomProgressView: View {
    
    @Binding var value: Double
    
    var body: some View {
        VStack {
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            HStack(spacing: 8) {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle(tint: Color.white))
                    .frame(width: 30, height: 30)
                    .scaleEffect(1.5, anchor: .center)
                TextCustom(text: "\(Int(value * 100))%", size: 17, weight: .regular, color: .white)
            }
            Spacer()
        }
        .ignoresSafeArea()
    }
}

struct CustomProgressView_Preview: PreviewProvider {
    
    @State static var value: Double = 0.46
    
    static var previews: some View {
        CustomProgressView(value: $value)
            .background(Color.black)
    }
}

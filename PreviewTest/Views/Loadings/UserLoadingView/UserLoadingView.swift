//
//  LoadingView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 11.07.2024.
//

import SwiftUI

struct UserLoadingView: View {
    
    @Binding var value: Double

    var body: some View {
        ZStack {
            Image(ImageTitles.UserLoadingBackground.rawValue)
                .resizable()
                .background(Color.black)
                .ignoresSafeArea()

            LogoUserLoadingView()
            CustomProgressView(value: $value)
        }
    }
}

struct UserLoadingView_Preview: PreviewProvider {
    
    @State static var value: Double = 0
    
    static var previews: some View {
        UserLoadingView(value: $value)
    }
}

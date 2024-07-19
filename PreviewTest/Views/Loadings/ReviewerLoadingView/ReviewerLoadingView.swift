//
//  ReviewerLoadingView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 11.07.2024.
//

import SwiftUI
import Combine

struct ReviewerLoadingView: View {
    
    let loaded = PassthroughSubject<Bool, Never>()
    
    @ObservedObject var viewModel: LoadingViewModel

    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            //LogoReviewerLoadingView()
            Image("LoadingScreenLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 340)
                .padding(.bottom, 182)
            CustomProgressView(value: $viewModel.value)
        }
    }
}

struct ReviewerLoadingView_Preview: PreviewProvider {
    
    static var previews: some View {
        ReviewerLoadingView(viewModel: LoadingViewModel(dataManager: DataManager()))
    }
}

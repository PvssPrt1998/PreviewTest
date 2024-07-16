//
//  AppContainer.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 15.07.2024.
//

import SwiftUI

final class AppContainer {
    let viewModelFactory: ViewModelFactory
    let mainViewContainer: MainContainer
    
    init() {
        viewModelFactory = ViewModelFactory()
        mainViewContainer = MainContainer(viewModelFactory)
    }
    
    func loadingView() -> ReviewerLoadingView {
        ReviewerLoadingView()
    }
    
    func onboardingView() -> ReviewerOnboardingView {
        ReviewerOnboardingView(viewModel: viewModelFactory.makeReviewerOnboardingViewModel())
    }
    
    @ViewBuilder func mainView() -> some View {
        mainViewContainer.mainView()
    }
}

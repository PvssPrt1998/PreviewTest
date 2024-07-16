//
//  ReviewerOnboardingTabView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 11.07.2024.
//

import SwiftUI

struct ReviewerOnboardingView: View {
    
    @ObservedObject var viewModel: ReviewerOnboardingViewModel
    @Environment(\.safeAreaInsets) private var safeAreaInsets
    
    init(viewModel: ReviewerOnboardingViewModel) {
        self.viewModel = viewModel
        UIScrollView.appearance().bounces = false
    }
    
    var body: some View {
        ZStack {
            ScrollView(.init()) {
                TabView(selection: $viewModel.selection) {
                    ForEach(viewModel.itemsRange, id: \.self) { index in
                        OnboardingView(title: viewModel.items[index].title,
                                       caption: viewModel.items[index].caption,
                                       backgroundImageTitle: viewModel.items[index].backgroundTitle,
                                       blur: false)
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .overlay(
                    VStack {
                        Spacer()
                        HStack(spacing: 15) {
                            ForEach(viewModel.itemsRange, id: \.self) { index in
                                Capsule()
                                    .fill(viewModel.colorByIndex(index))
                                    .frame(width: viewModel.widthByIndex(index), height: 8)
                            }
                            Spacer()
                            NextButton(action: {viewModel.nextButtonPressed()})
                        }
                    }
                    .padding(EdgeInsets(top: 0,
                                        leading: 15,
                                        bottom: safeAreaInsets.bottom,
                                        trailing: 15))
                )
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    ReviewerOnboardingView(viewModel: ReviewerOnboardingViewModel())
}

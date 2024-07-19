//
//  OnboardingTabView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 11.07.2024.
//

import SwiftUI

struct UserOnboardingTabView: View {
    
    @StateObject var viewModel = UserOnboardingViewModel()
    @Environment(\.safeAreaInsets) private var safeAreaInsets
    
    init() {
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
                                       blur: viewModel.blur)
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .overlay(
                    HStack(spacing: 15) {
                        ForEach(0..<viewModel.indicatorElementsCount, id: \.self) { index in
                            Capsule()
                                .fill(viewModel.colorByIndex(index))
                                .frame(width: viewModel.widthByIndex(index), height: 8)
                        }
                        Spacer()
                        NextButton(action: {viewModel.selectionNext()})
                    }
                    .blur(radius: viewModel.selection == 2 ? 3 : 0)
                    .frame(maxHeight: .infinity, alignment: .bottom)
                    .padding(EdgeInsets(top: 0,
                                        leading: 15,
                                        bottom: safeAreaInsets.bottom,
                                        trailing: 15))
                )
            }
            .ignoresSafeArea()
            if viewModel.showAlert {
                RateAlertView(title: "Review Store Review Controller?", description: "Tap a star to rate it on the App Store.") {
                }
            }
        }
    }
}

#Preview {
    UserOnboardingTabView()
}

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
            LogoReviewerLoadingView()
            CustomProgressView(value: $viewModel.value)
        }
//        .onAppear {
//            stroke {
//                self.value += 0.25
//                stroke {
//                    self.value += 0.25
//                    stroke {
//                        self.value += 0.25
//                        stroke {
//                            self.value += 0.25
//                            loaded.send(true)
//                        }
//                    }
//                }
//            }
//        }
    }
    
    func stroke(_ completion: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            completion()
        }
    }
}

struct ReviewerLoadingView_Preview: PreviewProvider {
    
    static var previews: some View {
        ReviewerLoadingView(viewModel: LoadingViewModel(dataManager: DataManager()))
    }
}

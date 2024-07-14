//
//  ReviewerLoadingView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 11.07.2024.
//

import SwiftUI

struct ReviewerLoadingView: View {
    
    @Binding var value: Double

    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            LogoReviewerLoadingView()
            CustomProgressView(value: $value)
        }
        .onAppear {
            stroke {
                self.value += 0.25
                stroke {
                    self.value += 0.25
                    stroke {
                        self.value += 0.25
                        stroke {
                            self.value += 0.25
                        }
                    }
                }
            }
        }
    }
    
    func stroke(_ completion: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            completion()
        }
    }
}

struct ReviewerLoadingView_Preview: PreviewProvider {
    
    @State static var value: Double = 0
    
    static var previews: some View {
        ReviewerLoadingView(value: $value)
    }
}

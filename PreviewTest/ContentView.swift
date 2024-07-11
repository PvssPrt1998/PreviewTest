//
//  ContentView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 11.07.2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = ContentViewModel()
    
    var body: some View {
        if viewModel.loading {
            UserLoadingView(value: $viewModel.value)
        } else {
//            Button {
//                viewModel.again()
//            } label: {
//                Text("again")
//            }
            OnboardingTabView()
        }
    }
}

#Preview {
    ContentView()
}

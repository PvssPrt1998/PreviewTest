//
//  KartingPlaceContainerView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 15.07.2024.
//

import SwiftUI

struct KartingPlaceContainerView: View {
    
    weak var container: HomeContainer?
    
    @ObservedObject var viewModel: KartingPlaceContainerViewModel
    
    @State var showAddKartingPlaceView = false
    
    init(_ container: HomeContainer, viewModel: KartingPlaceContainerViewModel) {
        self.container = container
        self.viewModel = viewModel
    }
    
    var body: some View {
        kartingPlaceContainerView()
            .sheet(isPresented: $showAddKartingPlaceView) {
                container?.kartingPlaceAddView($showAddKartingPlaceView)
            }
    }
    
    @ViewBuilder func kartingPlaceContainerView() -> some View {
        if viewModel.isKartingPlaceExists {
            container?.kartingPlaceView()
        } else {
            EmptyKartingPlaceView(showAddKartingPlaceView: $showAddKartingPlaceView)
        }
    }
}

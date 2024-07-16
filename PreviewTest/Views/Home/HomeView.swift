//
//  HomeView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 11.07.2024.
//

import SwiftUI

struct HomeView: View {
    
    weak var container: HomeContainer?
    
    @State var showSheet: Bool? = false
    
    var body: some View {
        ZStack {
            Color.bgSecond.ignoresSafeArea()
            container?.kartingPlaceContainerView()
            container?.buildKartsView()
        }
    }
}

#Preview {
    HomeView()
}

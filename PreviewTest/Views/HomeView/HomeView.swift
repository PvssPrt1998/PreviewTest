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
    
    @GestureState private var translation: CGFloat = 0
    
    var body: some View {
        ZStack {
            Color.bgMain
                .ignoresSafeArea()
            
            if let container = container {
                container.buildKartingPlaceView()
                container.buildSheetKartsViewView()
            }
        }
    }
}

#Preview {
    HomeView()
}

//
//  HomeView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 11.07.2024.
//

import SwiftUI

struct HomeView: View {
    
    weak var container: HomeContainer?
    
    class ShowSheetWrapper: ObservableObject {
        @Published var showSheet = false
        @Published var showKartingPlaceSheet = false
    }
    
    @StateObject var showSheetWrapper = ShowSheetWrapper()
    
    var body: some View {
        ZStack {
            Color.bgSecond.ignoresSafeArea()
            container?.kartingPlaceContainerView()
            container?.buildKartsView()
            VStack {
                Spacer()
                Divider()
            }
        }
        .sheet(isPresented: $showSheetWrapper.showSheet) {
            container?.buildKartAddView()
        }
        .sheet(isPresented: $showSheetWrapper.showKartingPlaceSheet) {
            container?.kartingPlaceAddView()
        }
        .environmentObject(showSheetWrapper)
    }
}

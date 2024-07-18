//
//  AddKartingPlaceView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 12.07.2024.
//

import SwiftUI

struct EmptyKartingPlaceView: View {
    
    @EnvironmentObject var showSheet: HomeView.ShowSheetWrapper
    
    var body: some View {
        VStack {
            AddView(title: "Add the data", description: "Indicate basic information", buttonTitle: "Add information", showBackground: true) {
                showSheet.showKartingPlaceSheet = true
            }
            .frame(height: 320)
            Spacer()
        }
        .ignoresSafeArea()
    }
}

struct EmptyKartingPlaceView_Preview: PreviewProvider {
    
    static var previews: some View {
        EmptyKartingPlaceView()
    }
}

//
//  AddKartingPlaceView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 12.07.2024.
//

import SwiftUI

struct EmptyKartingPlaceView: View {
    
    @Binding var showAddKartingPlaceView: Bool
    
    var body: some View {
        VStack {
            AddView(title: "Add the data", description: "Indicate basic information", buttonTitle: "Add information", showBackground: true) {
                showAddKartingPlaceView = true
            }
            .frame(height: 320)
            Spacer()
        }
        .ignoresSafeArea()
    }
}

struct EmptyKartingPlaceView_Preview: PreviewProvider {
    
    @State static var show: Bool = false
    
    static var previews: some View {
        EmptyKartingPlaceView(showAddKartingPlaceView: $show)
    }
}

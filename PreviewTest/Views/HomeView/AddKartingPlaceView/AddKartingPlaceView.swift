//
//  AddKartingPlaceView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 12.07.2024.
//

import SwiftUI

struct AddKartingPlaceView: View {
    
    @State var showAddKartingPlaceView: Bool = false
    
    var body: some View {
        VStack {
            ZStack {
                Color.bgMain
                AddView(title: "Add the data", description: "Indicate basic information", buttonTitle: "Add information", showBackground: true) {
                    
                }
            }
            .frame(height: 320)
            Spacer()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    AddKartingPlaceView()
}

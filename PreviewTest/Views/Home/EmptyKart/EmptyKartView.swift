//
//  AddKartView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 12.07.2024.
//

import SwiftUI

struct EmptyKartView: View {
    
    @Binding var showAddKartView: Bool
    
    var body: some View {
        AddView(title: "Add your employees", description: "Fill in the information", buttonTitle: "title", showBackground: true) {
            showAddKartView = true
        }
    }
}

struct EmptyKartView_Preview: PreviewProvider {
    
    @State static var show: Bool = false
    
    static var previews: some View {
        EmptyKartView(showAddKartView: $show)
    }
}

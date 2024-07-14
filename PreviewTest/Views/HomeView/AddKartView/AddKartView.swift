//
//  AddKartView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 12.07.2024.
//

import SwiftUI

struct AddKartView: View {
    var body: some View {
        SheetView(paddingValuesStorage: SheetPaddingValuesStorage(sizeState: .defalt)) {
            AddView(title: "Add your employees", description: "Fill in the information", buttonTitle: "title", showBackground: true, action: {})
        }
    }
}

#Preview {
    AddKartView()
}

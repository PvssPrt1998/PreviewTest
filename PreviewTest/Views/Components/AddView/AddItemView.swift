//
//  NewView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 14.07.2024.
//

import SwiftUI

struct AddItemView: View {
    
    let title: String
    let buttonTitle: String
    @State var disabled: Bool = true
    var withImage: Bool
    @State var imageData: Data?
    @Binding var showSheet: Bool
    
    let action: (_ imageData: Data?) -> Void
    
    var body: some View {
        SheetBackgroundContainerView(title: title) {
            VStack(spacing: 20) {
                if withImage {
                    AddItemImage(imageData: $imageData)
                }
                Spacer()
            }
        }
    }
}

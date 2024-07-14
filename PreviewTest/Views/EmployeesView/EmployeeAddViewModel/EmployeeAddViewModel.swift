//
//  EmployeeAddViewModel.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 14.07.2024.
//

import Foundation

final class EmployeeAddViewModel: ObservableObject {
    
    @Published var textFields: Array<TextField> = [
        TextField(text: "", placeholder: "Enter name", isFirstResponder: false),
        TextField(text: "", placeholder: "Enter post", isFirstResponder: false),
        TextField(text: "", placeholder: "Enter working hours", isFirstResponder: false)
    ]
    
    @Published var imageTitle: String?
    
    init(imageTitle: String? = nil) {
        self.imageTitle = imageTitle
    }
}

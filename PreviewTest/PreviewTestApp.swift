//
//  PreviewTestApp.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 11.07.2024.
//

import SwiftUI

@main
struct PreviewTestApp: App {
    
    @ObservedObject var appCoordinator: AppCoordinator
    
    
    init() {
        let appContainer = AppContainer()
        self.appCoordinator = AppCoordinator(appContainer: appContainer)
    }
    
    @State var ispres = true
    
    var body: some Scene {
        WindowGroup {
            appCoordinator.build()
                .preferredColorScheme(.dark)
        }
    }
}

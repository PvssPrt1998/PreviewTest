//
//  ContentView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 11.07.2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = ContentViewModel()
    
    let homeContainer: HomeContainer = HomeContainer(sheetPaddingValuesStorage: SheetPaddingValuesStorage(sizeState: .defalt))
    let emplyeesContainer = EmployeesViewContainer()
    let repairContnainer = RepairViewContainer()
    
    var body: some View {
//        if viewModel.loading {
//            UserLoadingView(value: $viewModel.value)
//        } else {
//            UserOnboardingTabView()
//           
//        }
        
        //homeContainer.buildHomeView()
        ZStack {
            Color.black.ignoresSafeArea()
            //emplyeesContainer.employeesView()
            repairContnainer.repairView()
        }
    }
}

#Preview {
    ContentView()
}

//
//  RepairTableView.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 14.07.2024.
//

import SwiftUI

struct RepairTableView: View {
    
    @ObservedObject var viewModel: RepairTableViewModel
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVStack(spacing: 0) {
                ForEach(0..<viewModel.repairsCount, id: \.self) { index in
                    RepairTableViewCell(repair: viewModel.getRepair(by: index), max: viewModel.max)
                        .cornerRadius(12, firstOrLastElement: firstOrLast(index: index))
                }
            }
        }
        .clipShape(.rect(cornerRadius: 12))
    }
    
    private func firstOrLast(index: Int) -> Bool? {
        if index == 0 {
            return true
        } else if index == viewModel.repairsCount - 1 {
            return false
        }
        return nil
    }
}

#Preview {
    RepairTableView(viewModel: RepairTableViewModel(repairData: RepairData()))
        .padding(10)
        .background(Color.bgSecond)
}

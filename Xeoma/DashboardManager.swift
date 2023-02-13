//
//  DashboardManager.swift
//  Xeoma
//
//  Created by Vitaliy Iakushev on 11.02.2023.
//

import Foundation

enum CustomGrid: String, CaseIterable {
    case twoByTwo, threeByThree, fourByFour
}

class DashboardManager: ObservableObject {
    @Published private(set) var cameras: [Camera] = []
    @Published var selectedGrid: CustomGrid = CustomGrid.twoByTwo
    
    
}

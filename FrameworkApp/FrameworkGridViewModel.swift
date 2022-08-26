//
//  FrameworkGridViewModel.swift
//  FrameworkApp
//
//  Created by Alisher Baigazin on 27.08.2022.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isFrameworkDetailViewShown = true
        }
    }
    
    @Published var isFrameworkDetailViewShown = false
}

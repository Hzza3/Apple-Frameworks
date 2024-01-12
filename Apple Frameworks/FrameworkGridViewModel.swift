//
//  FrameworkGridViewModel.swift
//  Apple Frameworks
//
//  Created by Ahmed Hazzaa on 12/01/2024.
//

import Foundation
import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailsView = true
        }
    }
    
    @Published var isShowingDetailsView = false
}

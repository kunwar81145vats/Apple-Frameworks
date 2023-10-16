//
//  FrameworkGridViewModel.swift
//  Apple Frameworks
//
//  Created by Kunwar Vats on 13/10/23.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject
{
    var selectedFramework: Framework? {
        didSet {
            isDetailViewShowing = true
        }
    }
    
    @Published var isDetailViewShowing = false
}

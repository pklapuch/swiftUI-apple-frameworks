//
//  FramweworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Pawel Klapuch on 8/28/21.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            
            defer { isShowingDetailView = selectedFramework != nil }
            guard let value = selectedFramework else { return }
            frameworkToPresent = value
        }
    }
    
    var frameworkToPresent: Framework = MockData.sampleFramework
 
    @Published var frameworks: [Framework] = MockData.frameworks
    @Published var isShowingDetailView = false
}


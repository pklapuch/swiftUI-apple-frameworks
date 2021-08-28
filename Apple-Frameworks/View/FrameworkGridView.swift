//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Pawel Klapuch on 8/28/21.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel: FrameworkGridViewModel
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(viewModel.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture { viewModel.selectedFramework = framework }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                
                FrameworkDetailView(framework: viewModel.frameworkToPresent,
                                    isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView(viewModel: FrameworkGridViewModel())
            .preferredColorScheme(.dark)
    }
}

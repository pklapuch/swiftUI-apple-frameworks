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
            
            List {
                ForEach(viewModel.frameworks) { framework in
                    let detailView = FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)
                    NavigationLink(destination: detailView) { FrameworkTitleView(framework: framework) }
                }
            }
            .navigationTitle("🍎 Frameworks")
        }
        .accentColor(Color(.label))
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView(viewModel: FrameworkGridViewModel())
            .preferredColorScheme(.dark)
    }
}

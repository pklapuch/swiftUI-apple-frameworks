//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Pawel Klapuch on 8/28/21.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    let framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        
        VStack {
            
            Spacer()
            CloseButtonPanelView(isClosed: $isShowingDetailView)
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            ScrollView {
                Text(framework.description)
                    .font(.body)
                    .padding()
            }
            
            Button {
                isShowingSafariView = true
            } label: {
                RoundedTextButton(title: "Learn More")
            }
            
            Spacer()
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            let url = URL(string: framework.urlString)!
            SafariView(url: url)
        })
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        let framework = MockData.sampleFramework
        FrameworkDetailView(framework: framework, isShowingDetailView: .constant(false))
            .preferredColorScheme(.dark)
    }
}

struct CloseButtonPanelView: View {
    
    @Binding var isClosed: Bool
    
    var body: some View {
        HStack {
            Spacer()
            
            Button {
                isClosed = false
            } label: {
                CloseButton()
            }
            .padding()
        }
    }
}

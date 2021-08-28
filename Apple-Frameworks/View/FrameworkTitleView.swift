//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Pawel Klapuch on 8/28/21.
//

import SwiftUI

struct FrameworkTitleView: View {
    
    let framework: Framework
    
    var body: some View {
        
        VStack {
            Image(framework.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 90, height: 90)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
        .padding()
    }
}

struct FrameworkTitleView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        let framewoek = MockData.sampleFramework
        FrameworkTitleView(framework: framewoek)
    }
}

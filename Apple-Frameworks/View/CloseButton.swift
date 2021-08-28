//
//  CloseButton.swift
//  Apple-Frameworks
//
//  Created by Pawel Klapuch on 8/28/21.
//

import SwiftUI

struct CloseButton: View {
    
    var body: some View {
        
        Image(systemName: "xmark")
            .foregroundColor(Color(.label))
            .imageScale(.large)
            .frame(width: 44, height: 44)
    }
}

struct CloseButton_Previews: PreviewProvider {
    
    static var previews: some View {
        
        CloseButton()
    }
}


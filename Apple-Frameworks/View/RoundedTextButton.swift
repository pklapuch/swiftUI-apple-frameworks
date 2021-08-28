//
//  RoundedTextButton.swift
//  Apple-Frameworks
//
//  Created by Pawel Klapuch on 8/28/21.
//

import SwiftUI

struct RoundedTextButton: View {
    
    var title: String
    
    var body: some View {
        
        Text(title)
            .bold()
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .frame(width: 280, height: 50)
            .background(Color.red)
            .cornerRadius(10)
    }
}

struct RoundedTextButton_Previews: PreviewProvider {
    
    static var previews: some View {
        
        RoundedTextButton(title: "Test Button")
    }
}

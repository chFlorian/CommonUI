//
//  ProgressBar.swift
//  
//
//  Created by florian schweizer on 19.03.21.
//

import SwiftUI

struct ProgressBar: View {
    let progress: CGFloat
    let primaryColor: Color
    let secondaryColor: Color
    
    var body: some View {
        GeometryReader { geometry in
            RoundedRectangle(cornerRadius: 5)
                .fill(secondaryColor)
                .frame(width: geometry.size.width, height: 10)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .fill(primaryColor)
                        .frame(width: geometry.size.width * progress, height: 10)
                    
                    ,alignment: .leading
                )
                .opacity(0.4)
        }
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(progress: 0.3, primaryColor: .blue, secondaryColor: .gray)
            .padding()
            .previewDevice(.init(rawValue: "iPhone 12 Pro Max"))
    }
}

//
//  File.swift
//  
//
//  Created by florian schweizer on 20.03.21.
//

import SwiftUI

public struct LargeTextField: View {
    @Binding var text: String
    @State var placeholder: String
    
    public var body: some View {
        ZStack(alignment: .topLeading) {
            if text.isEmpty {
                Text(placeholder)
                    .foregroundColor(Color(.placeholderText))
                    .opacity(0.75)
                    .padding(8)
                    .padding(.top, 3)
            }
            
            TextEditor(text: $text)
                .frame(height: 200)
                .padding(3)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.lightGray))
                )
                .opacity(text.isEmpty ? 0.25 : 1)
        }
    }
}

struct LargeTextField_Preview: PreviewProvider {
    @State static var text = ""
    static var previews: some View {
        LargeTextField(text: $text, placeholder: "Placeholder")
            .previewDevice(.init(rawValue: "iPhone 12 Pro Max"))
            .frame(width: 300, height: 300)
    }
}

//
//  File.swift
//  
//
//  Created by florian schweizer on 20.03.21.
//

import SwiftUI

public struct PurchaseItemView: View {
    public let imageString: String
    public let imageColor: Color
    public let title: String
    public let description: String
    public let price: String
    public var useSystemName: Bool = true
    
    public var body: some View {
        HStack {
            (useSystemName ? Image(systemName: imageString) : Image(imageString))
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .foregroundColor(imageColor)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(title)
                    .fontWeight(.semibold)
                
                Text(description)
                    .font(.caption)
                    .foregroundColor(.gray)
                
                Button(price, action: {})
                    .padding(3)
                    .padding(.horizontal, 2)
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.gray.opacity(0.2)))
            }
        }
        .padding(.horizontal)
    }
}

struct PurchaseItemView_Previews: PreviewProvider {
    static var previews: some View {
        PurchaseItemView(imageString: "crown", imageColor: .primary, title: "1 Month Premium", description: "Get premium for one month and unlock unlimited challenges.", price: "$4.99")
            .previewDevice(.init(rawValue: "iPhone 12 Pro Max"))
    }
}

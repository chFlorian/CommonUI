//
//  File.swift
//  
//
//  Created by florian schweizer on 17.07.21.
//

import SwiftUI

extension View {
    public func leading() -> some View {
        return HStack {
            self
            Spacer()
        }
    }
    public func trailing() -> some View {
        return HStack {
            Spacer()
            self
        }
    }
    public func top() -> some View {
        return VStack {
            self
            Spacer()
        }
    }
    public func bottom() -> some View {
        return VStack {
            Spacer()
            self
        }
    }
}

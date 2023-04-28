//
//  StretchableHeader.swift
//  SpotifyClone
//
//  Created by Ahmed Alabiad on 28/04/2023.
//

import Foundation
import SwiftUI

public struct ScrollViewHeader<Content: View>: View {

    public init(
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.content = content
    }

    private let content: () -> Content

    public var body: some View {
        GeometryReader { geo in
            content().stretchable(in: geo)
        }
    }
}

private extension View {

    @ViewBuilder
    func stretchable(in geo: GeometryProxy) -> some View {
        let width = geo.size.width
        let height = geo.size.height
        let minY = geo.frame(in: .global).minY
        let useStandard = minY <= 0
        self.frame(width: width, height: height + (useStandard ? 0 : minY))
            .offset(y: useStandard ? 0 : -minY)
    }
}

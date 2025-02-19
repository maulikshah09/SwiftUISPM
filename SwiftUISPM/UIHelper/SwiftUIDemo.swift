//
//  SwiftUIDemo.swift
//  SwiftUISPM
//
//  Created by Maulik Shah on 2/20/25.
//

import SwiftUI
import SwiftfulUI

struct SwiftUIDemo: View {
    var body: some View {
        Text("Hello, world!")
             .asWebLink {
                  URL(string: "https://www.google.com")
             }
    }
}

#Preview {
    SwiftUIDemo()
}



struct BackgroundBorderAndFillViewModifier2: ViewModifier {
    
    let backgroundColor: Color?
    let borderColor: Color?
    let borderWidth: CGFloat
    let cornerRadius: CGFloat

    func body(content: Content) -> some View {
        content
            .background(Color.white.opacity(0.0001)) // Prevents unwanted transparency issues
            .padding(-borderWidth)
            .background(
                RoundedRectangle(cornerRadius: max(0, cornerRadius - (borderWidth / 2)))
                    .fill(backgroundColor ?? Color.clear)
            )
            .padding(borderWidth)
            .background(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(borderColor ?? Color.clear)
            )
    }
}

public extension View {
    
    /// Adds an optional background and border with customization.
    func withBackgroundAndBorder2(
        backgroundColor: Color? = nil,
        borderColor: Color? = nil,
        borderWidth: CGFloat = 0,
        cornerRadius: CGFloat = 0
    ) -> some View {
        modifier(
            BackgroundBorderAndFillViewModifier2(
                backgroundColor: backgroundColor,
                borderColor: borderColor,
                borderWidth: borderWidth,
                cornerRadius: cornerRadius
            )
        )
    }
}

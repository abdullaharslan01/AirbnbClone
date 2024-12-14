//
//  View+Ext.swift
//  AirbnbAppClone
//
//  Created by abdullah on 13.12.2024.
//

import SwiftUI

extension View {
    func getSafeArea() -> UIEdgeInsets {
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else { return .zero }

        guard let safeArea = screen.windows.first?.safeAreaInsets else { return .zero }

        return safeArea
    }
}


struct SearchCardViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color.white,in: .rect(cornerRadius: 12))
            .shadow(radius: 5)
    }
}

extension View {
    func makeSearhCardView() -> some  View {
        self.modifier(SearchCardViewModifier())
    }
}

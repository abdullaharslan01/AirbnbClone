//
//  RatingView.swift
//  AirbnbAppClone
//
//  Created by abdullah on 12.12.2024.
//

import SwiftUI

struct RatingView: View {
    
    let ratingCount: Double
    
    var body: some View {
        HStack(spacing: 2) {
            Image(systemName: "star.fill")
            Text("\(ratingCount.formatted())")
        }
    }
}
#Preview {
    RatingView(ratingCount: 4 )
}

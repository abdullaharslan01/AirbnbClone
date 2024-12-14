//
//  ImageSliderView.swift
//  AirbnbAppClone
//
//  Created by abdullah on 12.12.2024.
//

import SwiftUI

struct ImageSliderView: View {
    
    let imageList: [String]
    
    
    init(_ imageList: [String]) {
        self.imageList = imageList
    }
    
    var body: some View {
        TabView {
            ForEach(imageList, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
                
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
  //  ImageSliderView()
}

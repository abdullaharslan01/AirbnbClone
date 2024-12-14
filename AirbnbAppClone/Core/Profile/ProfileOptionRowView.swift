//
//  ProfileOptionRewView.swift
//  AirbnbAppClone
//
//  Created by abdullah on 13.12.2024.
//

import SwiftUI

struct ProfileOptionRowView: View {
    
    let imageName: String
    let title: String
    var onTapGesture: (() -> ())? = nil
    
    var body: some View {
        
        Button {
            onTapGesture?()
        } label: {
            VStack {
                
                HStack {
                    
                    HStack {
                        Image(systemName: imageName)
                        
                        Text(title)
                            .font(.subheadline)
                    }.frame(maxWidth: .infinity, alignment: .leading)
                    
                    Image(systemName: "chevron.right")
                }
                Divider()
            }.foregroundStyle(.black)
        }

    }
}

#Preview {
    ProfileOptionRowView(imageName: "gear", title: "Settigns")
        .padding(.horizontal)
}

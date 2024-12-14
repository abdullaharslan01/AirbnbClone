//
//  WishlistsView.swift
//  AirbnbAppClone
//
//  Created by abdullah on 13.12.2024.
//

import SwiftUI

struct WishlistsView: View {
    var body: some View {
     
        VStack(alignment: .leading, spacing: 32) {
            VStack(alignment: .leading, spacing: 5) {
                Text("Log in to view your wishlists")
                    .font(.headline)
                    
                Text("You can create, view or edit wishlists once you've logged in")
                    .font(.footnote)
            }
                
            LoginButton()
                
            Spacer()
        }.padding()
            .navigationTitle("Wishlists")
            
    }
}

#Preview {
    NavigationStack {
        WishlistsView()
    }
}

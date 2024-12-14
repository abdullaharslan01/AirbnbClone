//
//  ListingItemView.swift
//  AirbnbAppClone
//
//  Created by abdullah on 12.12.2024.
//

import SwiftUI

struct ListingItemView: View {
    
    let listing: Listing
    
    var body: some View {
        VStack(spacing: 10) {
            // images
            ImageSliderView(listing.houseImageUrls)
                .frame(height: 320)
                .clipShape(.rect(cornerRadius: 10))
            
            // detail
            
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)
                    
                    Group {
                        Text("12 mi away")
                        Text("Nov 3 - 10")
                    }.foregroundStyle(.gray)
                    
                    HStack(spacing: 4) {
                        Text("$\(listing.pricePernight)")
                            .fontWeight(.semibold)
                        Text("Night")
                    }
                }.frame(maxWidth: .infinity, alignment: .leading)
                
                RatingView(ratingCount: listing.rating)
                
            }.font(.footnote)
                .foregroundStyle(.black)
            
        }
    }
}

#Preview {
    ListingItemView(listing: DeveloperPreview.shared.listings[0])
        .padding()
}


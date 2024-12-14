//
//  ExploreView.swift
//  AirbnbAppClone
//
//  Created by abdullah on 12.12.2024.
//

import SwiftUI

struct ExploreView: View {
    
    @Namespace var animation
    
    @State private var showDestinationSearchView = false
    
    
    @StateObject var viewModel = ExploreViewModel(service: ExploreService())
    
    var body: some View {
        NavigationStack {
            if showDestinationSearchView {
                DestinationSearchView(showDestinationSearchView: $showDestinationSearchView)
            }
            else {
                ScrollView(.vertical, showsIndicators: false) {
                    SearchAndFilterBar()
                        .onTapGesture {
                            withAnimation(.snappy) {
                                showDestinationSearchView.toggle()
                            }
                        }

                    LazyVStack(spacing: 32) {
                        ForEach(viewModel.listings) { listing in
                            NavigationLink(value: listing) {
                                ListingItemView(listing: listing)
                                    .matchedTransitionSource(id: listing, in: animation)
                                             
                            }

                        }
                    }.padding(.top, 10)
                }.padding()
                    .navigationDestination(for: Listing.self) { listing in
                        ListingDetailView(listing: listing)
                            .navigationBarBackButtonHidden()
                            .navigationTransition(.zoom(sourceID: listing, in: animation))
                                        
                    }
            }
            
        }
    }
}

#Preview {
    ExploreView()
}

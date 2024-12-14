//
//  ExploreViewModel.swift
//  AirbnbAppClone
//
//  Created by abdullah on 14.12.2024.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings: [Listing] = []
    private let service: ExploreService
    
    init(service: ExploreService) {
        self.service = service
        
        Task { await fetchListings()}
    }
    
    
    
    func fetchListings() async {
        do {
            self.listings = try await service.fetchListings()
        } catch {
            
        }
    }
    
}

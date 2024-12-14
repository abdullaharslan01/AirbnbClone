//
//  ExploreService.swift
//  AirbnbAppClone
//
//  Created by abdullah on 14.12.2024.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}

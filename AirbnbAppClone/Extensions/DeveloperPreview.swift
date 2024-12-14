//
//  DeveloperPreview.swift
//  AirbnbAppClone
//
//  Created by abdullah on 14.12.2024.
//

import Foundation


class DeveloperPreview {
    
    static let shared = DeveloperPreview()
    
    var listings: [Listing] = [
        Listing(
            id: "1",
            ownedUid: "user1",
            ownerName: "Abdullah Arslan",
            ownerImageUrl: "profile1",
            houseImageUrls: ["1", "2", "3", "4", "5"],
            numberOfBedrooms: 3,
            numberOfBathrooms: 2,
            numberOfGuests: 6,
            numberOfBeds: 4,
            pricePernight: 120,
            latitude: 37.7749,
            longitude: -122.4194,
            address: "123 Main St",
            city: "San Francisco",
            state: "CA",
            title: "Charming San Francisco Home",
            rating: 4.5,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .kitchen, .tv, .laundry, .balcony]
        ),
        Listing(
            id: "2",
            ownedUid: "user2",
            ownerName: "Bob Smith",
            ownerImageUrl: "profile2",
            houseImageUrls: ["6", "7", "8", "9", "10"],
            numberOfBedrooms: 2,
            numberOfBathrooms: 1,
            numberOfGuests: 4,
            numberOfBeds: 2,
            pricePernight: 80,
            latitude: 34.0522,
            longitude: -118.2437,
            address: "456 Ocean Dr",
            city: "Los Angeles",
            state: "CA",
            title: "Cozy Beachside Apartment",
            rating: 4.0,
            features: [.selfCheckIn],
            amenities: [.wifi, .pool, .tv, .alarmSystem]
        ),
        Listing(
            id: "3",
            ownedUid: "user3",
            ownerName: "Carla Green",
            ownerImageUrl: "profile3",
            houseImageUrls: ["11", "12", "13", "14", "15"],
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 8,
            numberOfBeds: 5,
            pricePernight: 150,
            latitude: 40.7128,
            longitude: -74.0060,
            address: "789 Broadway",
            city: "New York",
            state: "NY",
            title: "Spacious Family Retreat",
            rating: 4.8,
            features: [.superHost],
            amenities: [.wifi, .kitchen, .tv, .office, .balcony]
        ),
        Listing(
            id: "4",
            ownedUid: "user4",
            ownerName: "David Wright",
            ownerImageUrl: "profile4",
            houseImageUrls: ["16", "17", "18", "19", "20"],
            numberOfBedrooms: 1,
            numberOfBathrooms: 1,
            numberOfGuests: 2,
            numberOfBeds: 1,
            pricePernight: 60,
            latitude: 47.6062,
            longitude: -122.3321,
            address: "987 Pine St",
            city: "Seattle",
            state: "WA",
            title: "Modern Downtown Loft",
            rating: 4.2,
            features: [.selfCheckIn],
            amenities: [.wifi, .kitchen, .tv]
        ),
        Listing(
            id: "5",
            ownedUid: "user5",
            ownerName: "Eve Black",
            ownerImageUrl: "profile5",
            houseImageUrls: ["21", "22", "23", "24", "25"],
            numberOfBedrooms: 3,
            numberOfBathrooms: 2,
            numberOfGuests: 6,
            numberOfBeds: 3,
            pricePernight: 110,
            latitude: 36.1699,
            longitude: -115.1398,
            address: "321 Sunset Blvd",
            city: "Las Vegas",
            state: "NV",
            title: "Luxury Vegas Getaway",
            rating: 4.9,
            features: [.superHost, .selfCheckIn],
            amenities: [.wifi, .pool, .tv, .alarmSystem, .balcony]
        ),
        Listing(
            id: "6",
            ownedUid: "profile6",
            ownerName: "Krill White",
            ownerImageUrl: "profile6",
            houseImageUrls: ["1", "2", "3", "4", "5"],
            numberOfBedrooms: 5,
            numberOfBathrooms: 4,
            numberOfGuests: 10,
            numberOfBeds: 6,
            pricePernight: 200,
            latitude: 25.7617,
            longitude: -80.1918,
            address: "543 Beach Rd",
            city: "Miami",
            state: "FL",
            title: "Elegant Miami Villa",
            rating: 4.7,
            features: [.superHost],
            amenities: [.wifi, .pool, .office, .balcony]
        ),
        Listing(
            id: "7",
            ownedUid: "profile7",
            ownerName: "Jurica Lee",
            ownerImageUrl: "profile7",
            houseImageUrls: ["6", "7", "8", "9", "10"],
            numberOfBedrooms: 2,
            numberOfBathrooms: 2,
            numberOfGuests: 4,
            numberOfBeds: 2,
            pricePernight: 95,
            latitude: 34.0522,
            longitude: -118.2437,
            address: "111 Hollywood Blvd",
            city: "Los Angeles",
            state: "CA",
            title: "Stylish LA Apartment",
            rating: 4.3,
            features: [.selfCheckIn],
            amenities: [.wifi, .kitchen, .tv, .laundry]
        )
    ]
}

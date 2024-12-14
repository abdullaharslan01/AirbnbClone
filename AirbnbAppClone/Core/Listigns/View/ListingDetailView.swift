//
//  ListingDetailView.swift
//  AirbnbAppClone
//
//  Created by abdullah on 12.12.2024.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    
    @Environment(\.dismiss) var dismiss
    
    let listing: Listing
    
    @State private var cameraPosition: MapCameraPosition
    
    init(listing: Listing) {
        self.listing = listing
        
        let region = MKCoordinateRegion(center: .init(latitude: listing.latitude, longitude: listing.longitude), span: .init(latitudeDelta: 0.1, longitudeDelta: 0.1))
        
        self._cameraPosition = State(initialValue: .region(region))
    }
    
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            ZStack(alignment: .topLeading) {
                ImageSliderView(listing.houseImageUrls)
                    .frame(height: 320)
                
             
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background(
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        ).onTapGesture {
                            dismiss()
                        }
                
                .padding(.top,getSafeArea().top)
                .padding(.leading, 24)
               
                
            }
            
            VStack(alignment: .leading, spacing: 8) {
                Text(listing.city)
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        RatingView(ratingCount: listing.rating)
                        Text(" - ")
                        
                        Group {
                            Text("\(28)") + Text(" reviews")
                        }.underline()
                            .fontWeight(.semibold)
                        
                    }.foregroundStyle(.black)
                    
                    Text("\(listing.city), \(listing.state)")
                }.font(.caption)
            }.padding(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text("Entire villa hosted by \(listing.ownerName)")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    
                    HStack(spacing: 2) {
                        Text("\(listing.numberOfGuests) guests -") + Text(" \(listing.numberOfBedrooms) bedrooms -") + Text(" \(listing.numberOfBeds) beds -") + Text(" \(listing.numberOfBathrooms) baths")
                    }.font(.caption)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Image("\(listing.ownerImageUrl)")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(.circle)
            }.padding(.horizontal)
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16) {
                ForEach(listing.features) { feature in
                    HStack(spacing: 12) {
                        Image(systemName: "\(feature.imageName)")
                        
                        VStack(alignment: .leading) {
                            Text("\(feature.title)")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Text("\(feature.subtitle)")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                    }
                }
            }.frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16) {
                Text("Where you'll sleep")
                    .font(.headline)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack(spacing: 16) {
                        ForEach(1 ... listing.numberOfBedrooms, id: \.self) { bedroom in
                            VStack(alignment: .leading, spacing: 5) {
                                Image(systemName: "bed.double")
                                Text("Bedroom \(bedroom)")
                            }.containerRelativeFrame(.horizontal, count: 3, spacing: 0)
                                .frame(height: 100)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 12)
                                        .stroke(lineWidth: 1)
                                        .foregroundStyle(.gray)
                                }
                            
                        }
                    }
                }.scrollTargetBehavior(.paging)
            }.padding()
            

            Divider()
            
            VStack(alignment: .leading, spacing: 16) {
                Text("What this place offers")
                    .font(.headline)
                
                ForEach(listing.amenities) { amentity in
                    HStack {
                        Image(systemName: "\(amentity.imageName)")
                            .frame(width: 32)
                    
                        Text("\(amentity.title)")
                            .font(.footnote)
                        
                    }.frame(maxWidth: .infinity, alignment: .leading)
                }
                
            }.padding()
            
            Divider()
            
            
            VStack(alignment: .leading, spacing: 16) {
                Text("Where you'll be")
                    .font(.headline)
                
                Map(position: $cameraPosition)
                    .frame(height: 200)
                    .clipShape(.rect(cornerRadius: 12))
            }.padding()
            
        }
        .navigationBarHidden(true) 
        .ignoresSafeArea()
        .padding(.bottom, getSafeArea().bottom + 32)
        .overlay(alignment: .bottom) {
            VStack {
                Divider()
                    .padding(.bottom)
                
                HStack {
                    VStack(alignment: .leading) {
                        
                        Text("$\(listing.pricePernight)")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        
                        Text("Total before taxes")
                            .font(.footnote)
                        
                        Text("Oct 15 - 20")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                        
                        
                    }.frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                    
                    Button {
                        
                    } label: {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(Color.pink, in: .rect(cornerRadius: 8))
                            
                        
                            
                    }.padding(.horizontal, 32)
                   
                }.background(.white)
            }
        }
    }
}

#Preview {
    NavigationStack {
        ListingDetailView(listing: DeveloperPreview.shared.listings[0])
    }
}

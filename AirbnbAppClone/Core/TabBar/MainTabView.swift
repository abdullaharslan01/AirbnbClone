//
//  MainTabView.swift
//  AirbnbAppClone
//
//  Created by abdullah on 13.12.2024.
//

import SwiftUI

struct MainTabView: View {
    
    @State var selectedTab: TabItem = .Explore
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Tab(TabItem.Explore.tabName, systemImage: TabItem.Explore.tabSymbol, value: .Explore) {
                ExploreView()
                
            }
            
            Tab(TabItem.Wishlists.tabName, systemImage: TabItem.Wishlists.tabSymbol, value: .Wishlists) {
                NavigationStack {
                    WishlistsView()
                }
                            
            }
            
            Tab(TabItem.Profile.tabName, systemImage: TabItem.Profile.tabSymbol, value: .Profile) {
                ProfileView()
                            
            }
        }
    }
}

#Preview {
    MainTabView()
}

enum TabItem {
    case Explore
    case Wishlists
    case Profile
    
    var tabName: String {
        switch self {
        case .Explore:
            return "Explore"
        case .Wishlists:
            return "Wishlists"
        case .Profile:
            return "Profile"
        }
    }
    
    var tabSymbol: String {
        switch self {
        case .Explore:
            return "magnifyingglass"
        case .Wishlists:
            return "heart"
        case .Profile:
            return "person.circle"
        }
    }
}

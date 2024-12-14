//
//  ProfileView.swift
//  AirbnbAppClone
//
//  Created by abdullah on 13.12.2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
           
            VStack(alignment: .leading, spacing: 32) {
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    
                    Text("Log in to start planning your next trip")
                }
                
                LoginButton()
                
                HStack {
                    Text("Don't have an account?")
                    
                    Text("Sign up")
                        .fontWeight(.semibold)
                        .underline()
                }.font(.caption)
                
            }
            
            VStack(spacing: 24) {
                        ProfileOptionRowView(imageName: "gear", title: "Settigns")
                        ProfileOptionRowView(imageName: "accessibility", title: "Accessibility")
                        ProfileOptionRowView(imageName: "questionmark.circle", title: "Visit the help center")
                    }.padding(.vertical)
            
       
        }.padding()
       
    }
}

#Preview {
    ProfileView()
}

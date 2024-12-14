//
//  LoginButton.swift
//  AirbnbAppClone
//
//  Created by abdullah on 13.12.2024.
//

import SwiftUI

struct LoginButton: View {
    
    let onTapGesture: (()->())? = nil
    
    var body: some View {
        Button {
            onTapGesture?()
        } label: {
            Text("Log in")
                .foregroundStyle(.white)
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 360, height: 48)
                .background(.pink, in: .rect(cornerRadius: 8))
            
        }
    }
}

#Preview {
    LoginButton()
}

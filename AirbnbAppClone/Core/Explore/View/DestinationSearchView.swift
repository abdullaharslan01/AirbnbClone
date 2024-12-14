//
//  DestinationSearchView.swift
//  AirbnbAppClone
//
//  Created by abdullah on 13.12.2024.
//

import SwiftUI

enum DestinationSearchOptions {
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    
    @Binding var showDestinationSearchView: Bool
    @State private var destination = ""
    @State private var selectedOption: DestinationSearchOptions = .location
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
        
            XMarkButton(onTapGesture: {
                showDestinationSearchView.toggle()
            })
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.bottom, 16)
         
            locationView
                .onTapGesture {
                    selectedOption = .location
                }
            
            CollapsedPickerView(title: "When", description: "Add dates")
                .onTapGesture {
                    selectedOption = .dates
                }
            
            CollapsedPickerView(title: "Who", description: "Add guests")
                .onTapGesture {
                    selectedOption = .guests
                }
                
            Spacer()
            
        }.padding(.horizontal, 16)
    }
}

#Preview {
    DestinationSearchView(showDestinationSearchView: .constant(true))
}

extension DestinationSearchView {
    
    var locationView: some View {
        VStack(alignment: .leading) {
            Text("Where to?")
                .font(.title2)
                .fontWeight(.semibold)
                        
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Search destination", text: $destination)
                    .font(.subheadline)
            }.frame(height: 44)
                .padding(.horizontal)
                .overlay {
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(lineWidth: 1)
                        .foregroundStyle(Color(.systemGray4))
                            
                }
        }.makeSearhCardView()
    }
}

struct XMarkButton: View {
    
    var onTapGesture: (()->())? = nil
    
    var body: some View {
        Image(systemName: "xmark")
            .imageScale(.large)
            .foregroundStyle(.black)
            .padding()
            .overlay(content: {
                Circle()
                    .stroke()
                    .frame(width: 40, height: 40)
            })
            .onTapGesture {
                withAnimation(.snappy) {
                    onTapGesture?()
                }
            }
    }
}

struct CollapsedPickerView: View {
    
    let title: String
    let description: String
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text(description)
                
            }.fontWeight(.semibold)
                .font(.subheadline)
        }.makeSearhCardView()
    }
}

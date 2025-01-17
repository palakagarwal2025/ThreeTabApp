
//
//  NIST53Page.swift
//  Compliance App
//
//  Created by Palak Agarwal on 11/27/24.
//

import SwiftUI

struct NIST53Page: View {
    // Unique control families extracted from the full list
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())] // Two-column layout
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(controlFamilies, id: \.self) { family in
                    NavigationLink(destination: ControlFamilyDetailView(family: family)) {
                        VStack {
                            Text(family.name)
                                .font(.headline)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.white)
                                .padding()
                        }
                        .frame(height: 100) // Fixed height for the card
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(15)
                        .shadow(color: .gray.opacity(0.5), radius: 5, x: 0, y: 5)
                    }
                }
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)
        }
        .navigationTitle("NIST 800-53")
    }
}

struct NIST53Page_Previews: PreviewProvider {
    static var previews: some View {
        NIST53Page()
    }
}

//
//  CoffeeshopListComponent.swift
//  CoffeshopList
//
//  Created by MACBOOK PRO on 17/04/24.
//

import SwiftUI

struct CoffeeshopListComponent: View {
    var coffeeshop: Coffeeshop
    
    var body: some View {
        HStack(spacing: 10, content: {
            Image(coffeeshop.image)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 14))
            
            VStack(alignment: .leading, spacing: 8, content: {
                Text(coffeeshop.name)
                    .font(.system(.headline, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundStyle(.blue)
                Text(coffeeshop.description)
                    .lineLimit(2, reservesSpace: true)
                    .font(.subheadline)
                    .fontWeight(.bold)
                Text(coffeeshop.location)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            })
        })
    }
}

#Preview {
    CoffeeshopListComponent(coffeeshop: CoffeeshopProvider.allData().first!)
        .padding()
}

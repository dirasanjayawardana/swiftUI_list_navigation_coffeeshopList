//
//  HeaderCoffeeshopComponent.swift
//  CoffeshopList
//
//  Created by MACBOOK PRO on 17/04/24.
//

import SwiftUI

struct HeaderCoffeeshopComponent: View {
    var coffeeshop: Coffeeshop
    
    var body: some View {
        ZStack(alignment: .bottom, content: {
            Image(coffeeshop.image)
                .resizable()
            
            HStack {
                VStack(alignment: .leading, spacing: 4, content: {
                    Text(coffeeshop.name)
                        .foregroundStyle(.white)
                        .font(.system(.title, design: .rounded))
                    Text(coffeeshop.location)
                        .foregroundStyle(.secondary)
                })
                .padding()
                
                Spacer()
                
                Image(systemName: "fork.knife.circle.fill")
                    .resizable()
                    .frame(width:32, height: 32)
                    .clipped()
                    .padding(.trailing, 8)
                    .foregroundStyle(.orange)
            }
            .background(RandomColor.bgView().opacity(0.8))
        })
        .frame(height: 440)
    }
}

#Preview {
    HeaderCoffeeshopComponent(coffeeshop: CoffeeshopProvider.allData().first!)
}

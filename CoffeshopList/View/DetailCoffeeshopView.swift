//
//  DetailCoffeeshopView.swift
//  CoffeshopList
//
//  Created by MACBOOK PRO on 17/04/24.
//

import SwiftUI

struct DetailCoffeeshopView: View {
    var coffeeshop: Coffeeshop
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false, content: {
                HeaderCoffeeshopComponent(coffeeshop: coffeeshop)
                
                Text(coffeeshop.overview)
                    .font(.headline)
                    .padding()
            })
            .ignoresSafeArea()
        }
    }
}

#Preview {
    DetailCoffeeshopView(coffeeshop: CoffeeshopProvider.allData().first!)
}

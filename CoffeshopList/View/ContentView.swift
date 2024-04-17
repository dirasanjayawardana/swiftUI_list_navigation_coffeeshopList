//
//  ContentView.swift
//  CoffeshopList
//
//  Created by MACBOOK PRO on 17/04/24.
//

import SwiftUI

struct ContentView: View {
    var coffeeshops: [Coffeeshop] = CoffeeshopProvider.allData()
    
    var body: some View {
        NavigationStack {
           
            
            List(coffeeshops) {coffeeshop in
                NavigationLink(destination: {
                    DetailCoffeeshopView(coffeeshop: coffeeshop)
                }, label: {
                    CoffeeshopListComponent(coffeeshop: coffeeshop)
                        .listRowSeparator(.visible)
                })
            }
            .listStyle(.plain)
            .navigationTitle("Coffeeshop")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}

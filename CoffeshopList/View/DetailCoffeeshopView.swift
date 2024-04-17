//
//  DetailCoffeeshopView.swift
//  CoffeshopList
//
//  Created by MACBOOK PRO on 17/04/24.
//

import SwiftUI

struct DetailCoffeeshopView: View {
    var coffeeshop: Coffeeshop
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false, content: {
                HeaderCoffeeshopComponent(coffeeshop: coffeeshop)
                
                Text(coffeeshop.overview)
                    .font(.headline)
                    .padding()
            })
            .ignoresSafeArea()
            .navigationBarBackButtonHidden(true)
            .toolbar(content: {
                ToolbarItem(placement: .topBarLeading, content: {
                    Button(action: {
                        dismiss()
                    }, label: {
                        Image(systemName: "chevron.left.circle.fill")
                            .font(.title)
                    })
                    .tint(.primary)
                })
            })
        }
    }
}

#Preview {
    DetailCoffeeshopView(coffeeshop: CoffeeshopProvider.allData().first!)
}

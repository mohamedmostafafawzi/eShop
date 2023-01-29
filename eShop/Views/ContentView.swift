//
//  ContentView.swift
//  eShop
//
//  Created by Mohamed Fawzi on 11/12/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    ForEach(categoryList, id: \.id) { category in
                        CategoryRow(category: category)
                            .environmentObject(cartManager)
                    }
                }
            }
            .navigationTitle(Text("Home"))
            .toolbar {
                NavigationLink {
                    CartView()
                        .environmentObject(cartManager)
                } label: {
                    CartButton(numberOfProducts: cartManager.products.count)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

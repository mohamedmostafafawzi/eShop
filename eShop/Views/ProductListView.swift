//
//  ProductListView.swift
//  eShop
//
//  Created by Mohamed Fawzi on 11/12/22.
//

import SwiftUI

struct ProductListView: View {
    @EnvironmentObject var cartManager: CartManager
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    var category: Category
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(category.products, id: \.id) { product in
                        ProductCard(product: product)
                            .environmentObject(cartManager)
                    }
                }
                .padding()
            }
            .navigationTitle(Text(category.name))
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

struct ProductListView_Previews: PreviewProvider {
    static var previews: some View {
        ProductListView(category: categoryList[0])
            .environmentObject(CartManager())
    }
}

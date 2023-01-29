//
//  CartView.swift
//  eShop
//
//  Created by Mohamed Fawzi on 11/12/22.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        ScrollView {
            if cartManager.products.isEmpty {
                Text("Your cart is empty")
            } else {
                ForEach(cartManager.products, id: \.id) { product in
                    ProductRow(product: product)
                }
                Spacer()
                VStack(alignment: .leading) {
                    Text("Your cart total is")
                        .font(.title)
                    Spacer()
                    Text("$\(cartManager.total).00")
                        .font(.largeTitle)
                        .bold()
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            }
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}

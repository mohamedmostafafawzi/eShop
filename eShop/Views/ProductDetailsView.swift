//
//  ProductDetailsView.swift
//  eShop
//
//  Created by Mohamed Fawzi on 11/12/22.
//

import SwiftUI

struct ProductDetailsView: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    
    var body: some View {
        ZStack(alignment: .bottom) {
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text(product.name)
                            .bold()
                            .lineLimit(1)
                        Text("\(product.price)$")
                            .font(.caption)
                    }
                    .padding()
                                        
                    Button {
                        cartManager.addToCart(product: product)
                    } label: {
                        Image(systemName: "plus")
                            .padding(10)
                            .foregroundColor(.white)
                            .background(.black)
                            .cornerRadius(50)
                            .padding()
                    }
                }
                .background(.ultraThinMaterial)
                .cornerRadius(20)
            }
            .shadow(radius: 3)
        
    }
}

struct ProductDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailsView(product: productList[2])
            .environmentObject(CartManager())
    }
}

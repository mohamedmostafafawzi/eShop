//
//  CategoryRow.swift
//  eShop
//
//  Created by Mohamed Fawzi on 11/12/22.
//

import SwiftUI

struct CategoryRow: View {
    @EnvironmentObject var cartManager: CartManager
    var category: Category
    
    var body: some View {
        VStack {
            HStack {
                Text(category.name)
                    .font(.title)
                    .bold()
                    .padding()
                Spacer()
                NavigationLink {
                    ProductListView(category: category)
                        .environmentObject(cartManager)
                } label: {
                    Image(systemName: "chevron.right")
                        .padding(10)
                        .foregroundColor(.white)
                        .background(.black)
                        .cornerRadius(50)
                        .padding()
                }
            }
            
            ScrollView(.horizontal) {
                HStack {
                    ForEach(category.products, id: \.id) { product in
                        ProductCard(product: product)
                            .environmentObject(cartManager)
                    }
                }
                .padding(.bottom)
            }
            .padding(.leading)
            
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow(category: categoryList[0])
            .environmentObject(CartManager())
    }
}

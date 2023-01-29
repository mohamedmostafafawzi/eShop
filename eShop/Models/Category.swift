//
//  Category.swift
//  eShop
//
//  Created by Mohamed Fawzi on 11/12/22.
//

import Foundation

struct Category: Identifiable {
    var id = UUID()
    var name: String
    var products: [Product]
}

var categoryList = [Category(name: "New Arrival", products: productList),
                    Category(name: "Drinks", products: productList),
                    Category(name: "Games", products: productList)]

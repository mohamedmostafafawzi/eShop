//
//  Product.swift
//  eShop
//
//  Created by Mohamed Fawzi on 11/12/22.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Golden Darings", image: "product1", price: 320),
                   Product(name: "Greenish Suit", image: "product2", price: 240),
                   Product(name: "Loving Watch", image: "product3", price: 1034),
                   Product(name: "iPhone Leather Cover", image: "product4", price: 125),
                   Product(name: "Apple Watch", image: "product5", price: 432),
                   Product(name: "White Dream", image: "product6", price: 733),
                   Product(name: "Yellow Top", image: "product7", price: 23)]

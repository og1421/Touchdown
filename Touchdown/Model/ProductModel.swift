//
//  ProductModel.swift
//  Touchdown
//
//  Created by Orlando Moraes Martins on 05/02/23.
//

import Foundation

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
    
    var red: Double { return color[0] }
    var green: Double { return color[1] }
    var blue: Double { return color[2] }
    var formattedPrice: String { return "$ \(price)"}
    
    static let allProducts: [Product] = Bundle.main.decode("product.json")
    static let example = allProducts[0]
}

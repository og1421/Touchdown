//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Orlando Moraes Martins on 05/02/23.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    
    static let allCategories: [Category] = Bundle.main.decode("category.json")
    static let example = allCategories[0]
}

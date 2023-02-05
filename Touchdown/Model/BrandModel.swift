//
//  BrandModel.swift
//  Touchdown
//
//  Created by Orlando Moraes Martins on 05/02/23.
//

import Foundation

struct Brand: Codable, Identifiable {
    let id: Int
    let image: String
    
    static let allBrands: [Brand] = Bundle.main.decode("brand.json")
    static let example = allBrands[0]
}

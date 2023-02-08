//
//  Shop.swift
//  Touchdown
//
//  Created by Orlando Moraes Martins on 08/02/23.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
    
}

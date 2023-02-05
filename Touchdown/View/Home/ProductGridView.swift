//
//  ProductGridView.swift
//  Touchdown
//
//  Created by Orlando Moraes Martins on 05/02/23.
//

import SwiftUI

struct ProductGridView: View {
    //MARK: - Properties
    
    //MARK: - Body
    var body: some View {
        LazyVGrid (columns: gridLayout, spacing: 15){
            ForEach(Product.allProducts) { product in
                ProductItemView(product: product)
            }//:Loop
        }//: Grid
        .padding(15)
    }
}

struct ProductGridView_Previews: PreviewProvider {
    static var previews: some View {
        ProductGridView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

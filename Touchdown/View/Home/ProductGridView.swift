//
//  ProductGridView.swift
//  Touchdown
//
//  Created by Orlando Moraes Martins on 05/02/23.
//

import SwiftUI

struct ProductGridView: View {
    //MARK: - Properties
    @EnvironmentObject var shop: Shop
    //MARK: - Body
    var body: some View {
        LazyVGrid (columns: gridLayout, spacing: 15){
            ForEach(Product.allProducts) { product in
                ProductItemView(product: product)
                    .onTapGesture {
                        feedback.impactOccurred()
                        
                        withAnimation(.easeOut) {
                            shop.selectedProduct = product
                            shop.showingProduct = true
                        }
                    }
            }//:Loop
        }//: Grid
        .padding(15)
    }
}

struct ProductGridView_Previews: PreviewProvider {
    static var previews: some View {
        ProductGridView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

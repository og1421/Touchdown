//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Orlando Moraes Martins on 08/02/23.
//

import SwiftUI

struct AddToCartDetailView: View {
    //MARK: - Properties
    @EnvironmentObject var shop: Shop
    
    //MARK: - Body
    var body: some View {
        Button{
            feedback.impactOccurred()
        } label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Spacer()
            
        }//:Button
        .padding(15)
        .background(
            Color(red: shop.selectedProduct?.red ?? Product.example.red,
                  green: shop.selectedProduct?.green ?? Product.example.green,
                  blue: shop.selectedProduct?.blue ?? Product.example.blue)
        )
        .clipShape(Capsule())
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

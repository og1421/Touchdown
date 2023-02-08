//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Orlando Moraes Martins on 08/02/23.
//

import SwiftUI

struct AddToCartDetailView: View {
    //MARK: - Properties
    
    //MARK: - Body
    var body: some View {
        Button{
            
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
            Color(red: Product.example.red, green: Product.example.green, blue: Product.example.blue)
        )
        .clipShape(Capsule())
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Orlando Moraes Martins on 07/02/23.
//

import SwiftUI

struct ProductDetailView: View {
    //MARK: - Properties
    
    //MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 5 ) {
            //Navbar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication
                    .shared
                    .connectedScenes
                    .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
                    .first { $0.isKeyWindow }?.safeAreaInsets.top)
            
            //header
            HeaderDetailView()
                .padding(.horizontal)
            
            //detail top part
            TopPartDetailView()
                .padding(.horizontal)
            
            //detail bottom part
            
            //Rating + sizes
            
            //Description
            
            //Quantity + favorite
            
            //Add to cart
            Spacer()
            
        }//: Vstack
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(red: Product.example.red, green: Product.example.green, blue: Product.example.blue)
        ).ignoresSafeArea(.all, edges: .all)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}

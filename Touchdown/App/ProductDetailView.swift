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
                .zIndex(1)
            
            //detail bottom part
            VStack (alignment: .center, spacing: 0) {
                //Rating + sizes
                RatingSizesDetailView()
                    .padding(.top, -25)
                    .padding(.bottom, 10)
                
                //Description
                ScrollView(.vertical, showsIndicators: false) {
                    Text(Product.example.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }//: Scrool
                
                //Quantity + favorite
                QuantityFavoriteDetailView()
                    .padding(.vertical, 10)
                
                //Add to cart
                AddToCartDetailView()
                    .padding(20)
            }//: VSTACK
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
        }//: Vstack
        .zIndex(0)
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

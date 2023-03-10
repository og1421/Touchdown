//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Orlando Moraes Martins on 07/02/23.
//

import SwiftUI

struct HeaderDetailView: View {
    //MARK: - Properties
    @EnvironmentObject var shop: Shop
    
    //MARK: - Body
    var body: some View {
        VStack (alignment: .leading, spacing: 6){
            Text("Protective gear")
            
            Text(shop.selectedProduct?.name ?? Product.example.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }
        .foregroundColor(.white)
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}

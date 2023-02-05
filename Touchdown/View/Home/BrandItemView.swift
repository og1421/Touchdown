//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Orlando Moraes Martins on 05/02/23.
//

import SwiftUI

struct BrandItemView: View {
    //MARK: - Properties
    let brand: Brand
    
    //MARK: - Body
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding(3)
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1)
            )
    }
}

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: Brand.example)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackgound)
    }
}

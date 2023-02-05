//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Orlando Moraes Martins on 05/02/23.
//

import SwiftUI

struct BrandGridView: View {
    //MARK: - Properties
    
    //MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing) {
                ForEach(Brand.allBrands) { brand in
                    BrandItemView(brand: brand)
                }
            }//: Grid
            .frame(height: 200)
            .padding(15)
        }//:Scrool
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackgound)
    }
}

//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by Orlando Moraes Martins on 07/02/23.
//

import SwiftUI

struct TopPartDetailView: View {
    //MARK: - Properties
    @State private var isAnimated = false
    
    //MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            //Price
            VStack (alignment:.leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(Product.example.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
                
            }
            .offset(y: isAnimated ? -50 : -75)
            
            Spacer()

            
            //Photo
            Image(Product.example.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimated ? 0 : -35)
            
        }//HSTACK
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimated.toggle()
            }
        })
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

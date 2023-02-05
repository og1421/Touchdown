//
//  TitleView.swift
//  Touchdown
//
//  Created by Orlando Moraes Martins on 05/02/23.
//

import SwiftUI

struct TitleView: View {
    //MARK: - Properties
    var title: String
    
    //MARK: - Body
    var body: some View {
        HStack {
            Text(title)
                .font(.title)
                .fontWeight(.heavy)
            
            Spacer()
        }//: HSTACk
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackgound)
    }
}

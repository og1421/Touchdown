//
//  ContentView.swift
//  Touchdown
//
//  Created by Orlando Moraes Martins on 04/02/23.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    
    //MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication
                        .shared
                        .connectedScenes
                        .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
                        .first { $0.isKeyWindow }?.safeAreaInsets.top)
                    .background(.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0.0, y: 5)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 0) {
                        FeaturedTabView()
                          .frame(height: UIScreen.main.bounds.width / 1.475) // This will fix the layout rendering priority issue by using the screen's aspect ratio.
                          .padding(.vertical, 20)
                        
                        CategoryGridView()
                        
                        TitleView(title: "Helmets")
                        
                        ProductGridView()
                        
                        TitleView(title: "Brands")
                        
                        BrandGridView()                        
                        
                        FooterView()
                            .padding(.horizontal)
                    }//:Vstack
                }//: Scrool
                
            }//:VSTACK
            .background(colorBackgound.ignoresSafeArea(.all, edges: .all))
        }//:ZSTACK
        .ignoresSafeArea(.all, edges: .all)
    }
}

//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

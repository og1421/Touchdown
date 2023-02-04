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
        FooterView()
            .padding(.horizontal)
    }
}

//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

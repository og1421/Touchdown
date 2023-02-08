//
//  Constant.swift
//  Touchdown
//
//  Created by Orlando Moraes Martins on 04/02/23.
//

import SwiftUI
//Color

let colorBackgound: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

//Layout
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    Array(Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2))
}
//UX

let feedback = UIImpactFeedbackGenerator(style: .medium)

//API

//IMAGE

//Font

//String

//Misc

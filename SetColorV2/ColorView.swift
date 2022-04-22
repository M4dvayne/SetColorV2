//
//  ColorView.swift
//  SetColorV2
//
//  Created by Вячеслав Кремнев on 21.04.2022.
//

import SwiftUI

struct ColorView: View {
    @Binding var red: Double
    @Binding var green: Double
    @Binding var blue: Double
    
    var body: some View {
        Color(red: red / 255, green: green / 255, blue: blue / 255)
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: .constant(50.0), green: .constant(50.0), blue: .constant(50.0))
            .frame(width: 250, height: 150)
            .cornerRadius(10)
            .shadow(color: .cyan, radius: 25)
            .overlay(RoundedRectangle(cornerRadius: 6)
            )
    }
}

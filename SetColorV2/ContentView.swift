//
//  ContentView.swift
//  SetColorV2
//
//  Created by Вячеслав Кремнев on 19.04.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var redColorValue = Double.random(in: 0...255)
    @State private var greenColorValue = Double.random(in: 0...255)
    @State private var blueColorValue = Double.random(in: 0...255)
    
    @State private var textValueOfColor: String = " 😔"
    
    
    
    
    var body: some View {
        VStack {
            ColorView(red: $redColorValue, green: $greenColorValue, blue: $blueColorValue)
                .frame(width: 280, height: 150)
                .overlay(RoundedRectangle(cornerRadius: 7).stroke(lineWidth: 5))
                .shadow(color: .cyan, radius: 15, y: -12)
            HStack{
                VStack{
                    SettingSlider(colorValue: $redColorValue)
                        .tint(.red)
                        .shadow(color: .red, radius: 5)
                    SettingSlider(colorValue: $greenColorValue)
                        .tint(.green)
                        .shadow(color: .green, radius: 5)
                    SettingSlider(colorValue: $blueColorValue)
                        .tint(.blue)
                        .shadow(color: .blue, radius: 5)
                }
                VStack {
                    TextFieldColorValue(textFieldValue: $textValueOfColor, sliderValue: $redColorValue)
                        .padding()
                    TextFieldColorValue(textFieldValue: $textValueOfColor, sliderValue: $greenColorValue)
                    TextFieldColorValue(textFieldValue: $textValueOfColor, sliderValue: $blueColorValue)
                        .padding()
                }
            }
        }
        .padding(EdgeInsets(top: 0, leading: 16, bottom: 150, trailing: 16))
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

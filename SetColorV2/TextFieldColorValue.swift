//
//  TextField.swift
//  SetColorV2
//
//  Created by Вячеслав Кремнев on 20.04.2022.
//

import SwiftUI

struct TextFieldColorValue: View {
    @Binding var textFieldValue: String
    @Binding var sliderValue: Double
    
    var body: some View {
        TextField("", text: $textFieldValue) { _ in
            castText()
        }
        .frame(width: 35, height: 25)
        .overlay(RoundedRectangle(cornerRadius: 6).stroke(lineWidth: 2))
    }
}

struct TextField_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldColorValue(textFieldValue: .constant(" 128"), sliderValue: .constant(128.0))
    }
}


extension TextFieldColorValue{
    
    private func castText() {
        if let sliderValue = Int(textFieldValue) {
            self.sliderValue = Double(sliderValue)
            return
        }
    }
}

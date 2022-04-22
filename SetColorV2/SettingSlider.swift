//
//  SettingSlider.swift
//  SetColorV2
//
//  Created by Вячеслав Кремнев on 19.04.2022.
//

import SwiftUI

struct SettingSlider: View {
    
    @Binding var colorValue: Double
    
    var body: some View {
        VStack {
            HStack {
                Text("0")
                    .font(.title2)
                Slider(value: $colorValue, in: 0...255)
            }
        }
    }
}

struct SettingSlider_Previews: PreviewProvider {
    static var previews: some View {
        SettingSlider(colorValue: .constant(60.0))
    }
}

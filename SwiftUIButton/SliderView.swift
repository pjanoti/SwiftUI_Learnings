//
//  Slider.swift
//  SwiftUIButton
//
//  Created by prema janoti on 08/07/22.
//

import SwiftUI

struct SliderView: View {
    @State private var speed = 50.0
    
    var minValue: Double = 1
    var maxValue: Double = 100
    
    var body: some View {
        HStack {
            Text("\(minValue,specifier: "%.f")")
            Slider(value: $speed, in: minValue...maxValue, step: 1)
                .alignmentGuide(VerticalAlignment.center) { $0[VerticalAlignment.center]}
                .padding(.top)
                .overlay(GeometryReader { gp in
                    Text("\(speed,specifier: "%.f")").foregroundColor(.blue)
                        .alignmentGuide(HorizontalAlignment.leading) {
                            $0[HorizontalAlignment.leading] - (gp.size.width - $0.width) * speed / ( maxValue - minValue)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                }, alignment: .top)
            Text("\(maxValue,specifier: "%.f")")
        }
        .padding()
    }
}


struct Slider_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}

//
//  CustomButton.swift
//  SwiftUIButton
//
//  Created by prema janoti on 08/07/22.
//

import SwiftUI

public struct CustomButton: View {
    public var buttonTitle: String?
    public var buttonFont: Font?
    public var buttonFontWeight: Font.Weight?
    public var buttonForegroundColor: Color?
    public var buttonBGColor: Color?
    public var buttonCornerRadius: CGFloat?
    public var buttonImageName: String?
    public var borderWidth: CGFloat?
    public var buttonBorderColor: Color?
    
    public var body: some View {
        Button(action: {
            print("Delete tapped!")
        }) {
            HStack {
                Image(systemName: buttonImageName ?? "")
                    .font(.title)
                Text(buttonTitle ?? "Customize me")
                    .fontWeight(buttonFontWeight ?? .semibold)
                    .font(buttonFont ?? .title)
            }
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
            .padding(.vertical, 16)
            .foregroundColor(buttonForegroundColor ?? .white)
            .background(AnyView(Capsule().fill(buttonBGColor ?? Color.purple)))
            .overlay(RoundedRectangle(cornerRadius: buttonCornerRadius ?? 0).stroke(buttonBorderColor ?? Color.clear, lineWidth: borderWidth ?? 0))
        }
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton()
    }
}

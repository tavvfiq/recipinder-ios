//
//  CircleButton.swift
//  recipinder
//
//  Created by Taufiq Widi on 06/03/21.
//

import SwiftUI

struct CircleButton: View {
    private var width: CGFloat
    private var height: CGFloat
    private var iconName: String
    private var iconColor: Color

    init(iconName: String, iconColor: Color, width: CGFloat, height: CGFloat){
        self.width = width
        self.height = height
        self.iconName = iconName
        self.iconColor = iconColor
    }
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Image(systemName: iconName).resizable().aspectRatio(contentMode: .fit).scaledToFit().frame(width: width/3, height: height/3).foregroundColor(iconColor)
        }).frame(width: width, height: height).background(Color.white).overlay(Circle().stroke(Color.gray, lineWidth: 7))
    }
}

struct CircleButton_Previews: PreviewProvider {
    static var previews: some View {
        CircleButton(iconName: "heart.fill", iconColor: .blue, width: 100, height: 100)
    }
}

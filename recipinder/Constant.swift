//
//  Constant.swift
//  recipinder
//
//  Created by Taufiq Widi on 06/03/21.
//

import SwiftUI

extension Font {
    public static var logo: Font {
        Font.custom("Chalet", size: 28)
    }
}

enum FontType: String {
    case regular = "Light", medium = "Medium", bold = "Bold"
}

func fontTheme(type: FontType, size: CGFloat) -> Font {
    Font.custom("Gotham Rounded" + type.rawValue, size: size)
}

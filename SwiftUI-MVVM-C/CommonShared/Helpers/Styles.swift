//
//  Styles.swift
//  SwiftUI-MVVM-C
//
//  Created by Konstantin Chukhas on 04.06.2023.
//

import Foundation
import SwiftUI

enum AppColor {
    case buttonColor
    case buttonLightGrayColor
    case lightGray
    case title

    var color: Color {
        switch self {
       
        case .buttonColor:
            return Color(hex: "0057FF")
        case .lightGray:
            return Color(hex: "3C3C43")
        case .title:
            return Color(hex: "181818")
        case .buttonLightGrayColor:
            return Color(hex: "F2F2F7")
        }
    }
}

enum AppFont {
    case regular(size: CGFloat)
    case semibold(size: CGFloat)

    var font: Font {
        switch self {
        case .regular(let size):
            return Font.custom("SF-Pro-Text-Regular", size: size)
        case .semibold(let size):
            return Font.custom("SFProText-Semibold", size: size)
        }
    }
}

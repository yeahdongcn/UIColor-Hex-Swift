//
//  UIColorExtension.swift
//  HEXColor
//
//  Created by R0CKSTAR on 6/13/14.
//  Copyright (c) 2014 P.D.Q. All rights reserved.
//

import UIKit

extension UIColor {
    /**
    Initializer for hex format. (ex. 0xFFFFFFFF)
    
    Supporting formats:
    * 0xFFF, 0xFFFFFF: Red, Blue, Green
    * 0xFFFF, 0xFFFFFFFF: Red, Blue, Green, Alpha
    
    Black for bad format hex.
    */
    public convenience init(hex: UInt32) {
        let (red, green, blue, alpha) = rgba(hex)
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}

internal func rgba(hex: UInt32) -> (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
    let hexString = String(format: "%2X", hex)
    let red: CGFloat
    let green: CGFloat
    let blue: CGFloat
    let alpha: CGFloat
    switch hexString.characters.count {
    case 3:
        let divisor = CGFloat(15.0)
        red   = CGFloat((hex & 0xF00) >> 8) / divisor
        blue  = CGFloat((hex & 0x0F0) >> 4) / divisor
        green = CGFloat( hex & 0x00F      ) / divisor
        alpha = 1.0
    case 4:
        let divisor = CGFloat(15.0)
        red   = CGFloat((hex & 0xF000) >> 12) / divisor
        blue  = CGFloat((hex & 0x0F00) >>  8) / divisor
        green = CGFloat((hex & 0x00F0) >>  4) / divisor
        alpha = CGFloat( hex & 0x000F        ) / divisor
    case 6:
        let divisor = CGFloat(255.0)
        red   = CGFloat((hex & 0xFF0000) >> 16) / divisor
        blue  = CGFloat((hex & 0x00FF00) >>  8) / divisor
        green = CGFloat( hex & 0x0000FF       ) / divisor
        alpha = 1.0
    case 8:
        let divisor = CGFloat(255.0)
        red   = CGFloat((hex & 0xFF000000) >> 24) / divisor
        blue  = CGFloat((hex & 0x00FF0000) >> 16) / divisor
        green = CGFloat((hex & 0x0000FF00) >>  8) / divisor
        alpha = CGFloat( hex & 0x000000FF       ) / divisor
    default:
        print("**HEXColor warning:**\n" +
            "hex integer: \(hex)\n" +
            "hex string : \(hexString)\n" +
            "is not supported format."
        )
        red   = CGFloat(255)
        green = CGFloat(255)
        blue  = CGFloat(255)
        alpha = CGFloat(255)
    }
    return (red, blue, green, alpha)
}

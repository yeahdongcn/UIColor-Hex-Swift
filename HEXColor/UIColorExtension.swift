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
    */
    public convenience init(rgb: UInt32) {
        let divisor = CGFloat(255.0)
        let red   = CGFloat((rgb & 0xFF0000) >> 16) / divisor
        let green = CGFloat((rgb & 0xFF0000) >>  8) / divisor
        let blue  = CGFloat((rgb & 0x0000FF)      ) / divisor
        let alpha = CGFloat(1)
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    public convenience init(rgba: UInt32) {
        let divisor = CGFloat(255.0)
        let red   = CGFloat((rgba & 0xFF000000) >> 24) / divisor
        let green = CGFloat((rgba & 0x00FF0000) >> 16) / divisor
        let blue  = CGFloat((rgba & 0x0000FF00) >>  8) / divisor
        let alpha = CGFloat((rgba & 0x000000FF)      ) / divisor
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}

//
//  UIColorInputError.swift
//  HEXColor-iOS
//
//  Created by Sergey Pugach on 2/2/18.
//  Copyright © 2018 P.D.Q. All rights reserved.
//

import UIKit


public enum UIColorInputError: Error {
    
    case unableToScanHexValue(String)
    case mismatchedHexStringLength(String)
    case unableToOutputHexStringForWideDisplayColor
}


extension UIColorInputError: LocalizedError {
    
    public var errorDescription: String? {
        
        switch self {
            
        case .unableToScanHexValue(let hex):
            return "Unable to scan \(hex)"
            
        case .mismatchedHexStringLength(let hex):
            return "Invalid RGB string from \(hex), number of characters should be either 3, 4, 6 or 8"
            
        case .unableToOutputHexStringForWideDisplayColor:
            return "Unable to output hex string for wide display color"
        }
    }
}

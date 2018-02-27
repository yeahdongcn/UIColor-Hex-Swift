//
//  StringExtension.swift
//  HEXColor-iOS
//
//  Created by Sergey Pugach on 2/2/18.
//  Copyright © 2018 P.D.Q. All rights reserved.
//

import Foundation


extension String {
    
    /**
     Convert argb string to rgba string.
     */
    public var argb2rgba: String? {
        
        let offset = hasPrefix("#") ? 1 : 0
        
        switch count - offset {
        case 4:
            
            return "\(String(self[startIndex..<index(startIndex, offsetBy: offset)]))\(String(self[index(startIndex, offsetBy: offset + 1)...]))\(String(self[index(startIndex, offsetBy: offset)]))"
            
        case 8:
            return "\(String(self[startIndex..<index(startIndex, offsetBy: offset)]))\(String(self[index(startIndex, offsetBy: offset + 2)...]))\(String(self[index(startIndex, offsetBy: offset)..<index(startIndex, offsetBy: offset + 2)]))"
        default:
            return nil
        }
    }
}

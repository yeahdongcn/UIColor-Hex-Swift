//
//  HEXColorTests.swift
//  HEXColorTests
//
//  Created by Yuki Nagai on 10/5/15.
//  Copyright © 2015 P.D.Q. All rights reserved.
//

import XCTest
@testable import HEXColor

class HEXColorTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    /*
    Test cases
    * Minimum: 0x000000
    */
    
    // MARK: - Three-digit
    func testThreeDigitMin() {
        let (red, green, blue, alpha) = UIColor(hex3: 0x000).rgba()
        XCTAssertEqual(red, 0)
        XCTAssertEqual(green, 0)
        XCTAssertEqual(blue, 0)
        XCTAssertEqual(alpha, 0xFF)
    }
    
    func testThreeDigitMin() {
        let (red, green, blue, alpha) = UIColor(hex3: 0x000).rgba()
        XCTAssertEqual(red, 0)
        XCTAssertEqual(green, 0)
        XCTAssertEqual(blue, 0)
        XCTAssertEqual(alpha, 0xFF)
    }
}

extension UIColor {
    private func rgba() -> (red: UInt8, green: UInt8, blue: UInt8, alpha: UInt8) {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        self.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        return (toUInt8(red), toUInt8(green), toUInt8(blue), toUInt8(alpha))
    }
}

private func toUInt8(value: CGFloat) -> UInt8 {
    let multiplier = CGFloat(255)
    return UInt8(value * multiplier)
}

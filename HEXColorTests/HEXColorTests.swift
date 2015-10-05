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
    
    // MARK - Normal
    func testThreeDigits() {
        let (red, gree, blue, alpha) = UIColor(hex: 0x123).rgba()
        XCTAssertEqual(red, 0x11)
        XCTAssertEqual(gree, 0x22)
        XCTAssertEqual(blue, 0x33)
        XCTAssertEqual(alpha, 0xFF)
    }
    
    func testFourDigits() {
        let (red, gree, blue, alpha) = UIColor(hex: 0x1234).rgba()
        XCTAssertEqual(red, 0x11)
        XCTAssertEqual(gree, 0x22)
        XCTAssertEqual(blue, 0x33)
        XCTAssertEqual(alpha, 0x44)
    }
    
    func testSixDigits() {
        let (red, gree, blue, alpha) = UIColor(hex: 0x123456).rgba()
        XCTAssertEqual(red, 0x12)
        XCTAssertEqual(gree, 0x34)
        XCTAssertEqual(blue, 0x56)
        XCTAssertEqual(alpha, 0xFF)
    }
    
    func testEightDigits() {
        let (red, gree, blue, alpha) = UIColor(hex: 0x12345678).rgba()
        XCTAssertEqual(red, 0x12)
        XCTAssertEqual(gree, 0x34)
        XCTAssertEqual(blue, 0x56)
        XCTAssertEqual(alpha, 0x78)
    }
    
    // Error
    func testOneDigit() {
        let (red, gree, blue, alpha) = UIColor(hex: 0x1).rgba()
        XCTAssertEqual(red, 0xFF)
        XCTAssertEqual(gree, 0xFF)
        XCTAssertEqual(blue, 0xFF)
        XCTAssertEqual(alpha, 0xFF)
    }
    
    func testTwoDigits() {
        let (red, gree, blue, alpha) = UIColor(hex: 0x12).rgba()
        XCTAssertEqual(red, 0xFF)
        XCTAssertEqual(gree, 0xFF)
        XCTAssertEqual(blue, 0xFF)
        XCTAssertEqual(alpha, 0xFF)
    }
    
    func testFiveDigits() {
        let (red, gree, blue, alpha) = UIColor(hex: 0x12345).rgba()
        XCTAssertEqual(red, 0xFF)
        XCTAssertEqual(gree, 0xFF)
        XCTAssertEqual(blue, 0xFF)
        XCTAssertEqual(alpha, 0xFF)
    }
    
    func testSevenDigits() {
        let (red, gree, blue, alpha) = UIColor(hex: 0x1234567).rgba()
        XCTAssertEqual(red, 0xFF)
        XCTAssertEqual(gree, 0xFF)
        XCTAssertEqual(blue, 0xFF)
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

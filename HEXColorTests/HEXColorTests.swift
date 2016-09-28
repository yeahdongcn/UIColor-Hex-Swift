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
    * Minimum: 0x00000000
    * Step:    0x12345678
    * Alpha:   0x123456, alpha = 0.5 (3-digit/6-digit)
    * Maximum: 0xFFFFFFFF
    */
    
    // MARK: - Three-digit
    func testThreeDigitMin() {
        let (red, green, blue, alpha) = UIColor(hex3: 0x000).rgba()
        XCTAssertEqual(red, 0)
        XCTAssertEqual(green, 0)
        XCTAssertEqual(blue, 0)
        XCTAssertEqual(alpha, 0xFF)
        guard let (r, g, b, a) = try? UIColor(rgba_throws: "#000").rgba() else {
            XCTAssertTrue(false)
            return
        }
        XCTAssertEqual(r, 0)
        XCTAssertEqual(g, 0)
        XCTAssertEqual(b, 0)
        XCTAssertEqual(a, 0xFF)
    }
    
    func testThreeDigitStep() {
        let (red, green, blue, alpha) = UIColor(hex3: 0x123, alpha: 0.5).rgba()
        XCTAssertEqual(red, 0x11)
        XCTAssertEqual(green, 0x22)
        XCTAssertEqual(blue, 0x33)
        XCTAssertEqual(alpha, 0xFF / 2)
        guard let (r, g, b, a) = try? UIColor(rgba_throws: "#123").rgba() else {
            XCTAssertTrue(false)
            return
        }
        XCTAssertEqual(r, 0x11)
        XCTAssertEqual(g, 0x22)
        XCTAssertEqual(b, 0x33)
        XCTAssertEqual(a, 0xFF)
    }
    
    func testThreeDigitMax() {
        let (red, green, blue, alpha) = UIColor(hex3: 0xFFF).rgba()
        XCTAssertEqual(red, 0xFF)
        XCTAssertEqual(green, 0xFF)
        XCTAssertEqual(blue, 0xFF)
        XCTAssertEqual(alpha, 0xFF)
        guard let (r, g, b, a) = try? UIColor(rgba_throws: "#FFF").rgba() else {
            XCTAssertTrue(false)
            return
        }
        XCTAssertEqual(r, 0xFF)
        XCTAssertEqual(g, 0xFF)
        XCTAssertEqual(b, 0xFF)
        XCTAssertEqual(a, 0xFF)
    }
    
    // MARK: - Four-digit
    func testFourDigitMin() {
        let (red, green, blue, alpha) = UIColor(hex4: 0x0000).rgba()
        XCTAssertEqual(red, 0)
        XCTAssertEqual(green, 0)
        XCTAssertEqual(blue, 0)
        XCTAssertEqual(alpha, 0)
        guard let (r, g, b, a) = try? UIColor(rgba_throws: "#0000").rgba() else {
            XCTAssertTrue(false)
            return
        }
        XCTAssertEqual(r, 0)
        XCTAssertEqual(g, 0)
        XCTAssertEqual(b, 0)
        XCTAssertEqual(a, 0)
    }
    
    func testFourDigitStep() {
        let (red, green, blue, alpha) = UIColor(hex4: 0x1234).rgba()
        XCTAssertEqual(red, 0x11)
        XCTAssertEqual(green, 0x22)
        XCTAssertEqual(blue, 0x33)
        XCTAssertEqual(alpha, 0x44)
        guard let (r, g, b, a) = try? UIColor(rgba_throws: "#1234").rgba() else {
            XCTAssertTrue(false)
            return
        }
        XCTAssertEqual(r, 0x11)
        XCTAssertEqual(g, 0x22)
        XCTAssertEqual(b, 0x33)
        XCTAssertEqual(a, 0x44)
    }
    
    func testFourDigitMax() {
        let (red, green, blue, alpha) = UIColor(hex4: 0xFFFF).rgba()
        XCTAssertEqual(red, 0xFF)
        XCTAssertEqual(green, 0xFF)
        XCTAssertEqual(blue, 0xFF)
        XCTAssertEqual(alpha, 0xFF)
        guard let (r, g, b, a) = try? UIColor(rgba_throws: "#FFFF").rgba() else {
            XCTAssertTrue(false)
            return
        }
        XCTAssertEqual(r, 0xFF)
        XCTAssertEqual(g, 0xFF)
        XCTAssertEqual(b, 0xFF)
        XCTAssertEqual(a, 0xFF)
        
    }
    
    // MARK: - Six-digit
    func testSixDigitMin() {
        let (red, green, blue, alpha) = UIColor(hex6: 0x000000).rgba()
        XCTAssertEqual(red, 0)
        XCTAssertEqual(green, 0)
        XCTAssertEqual(blue, 0)
        XCTAssertEqual(alpha, 0xFF)
        guard let (r, g, b, a) = try? UIColor(rgba_throws: "#000000").rgba() else {
            XCTAssertTrue(false)
            return
        }
        XCTAssertEqual(r, 0)
        XCTAssertEqual(g, 0)
        XCTAssertEqual(b, 0)
        XCTAssertEqual(a, 0xFF)
    }
    
    func testSixDigitStep() {
        let (red, green, blue, alpha) = UIColor(hex6: 0x123456, alpha: 0.5).rgba()
        XCTAssertEqual(red, 0x12)
        XCTAssertEqual(green, 0x34)
        XCTAssertEqual(blue, 0x56)
        XCTAssertEqual(alpha, 0xFF / 2)
        guard let (r, g, b, a) = try? UIColor(rgba_throws: "#123456").rgba() else {
            XCTAssertTrue(false)
            return
        }
        XCTAssertEqual(r, 0x12)
        XCTAssertEqual(g, 0x34)
        XCTAssertEqual(b, 0x56)
        XCTAssertEqual(a, 0xFF)
    }
    
    func testSixDigitMax() {
        let (red, green, blue, alpha) = UIColor(hex6: 0xFFFFFF).rgba()
        XCTAssertEqual(red, 0xFF)
        XCTAssertEqual(green, 0xFF)
        XCTAssertEqual(blue, 0xFF)
        XCTAssertEqual(alpha, 0xFF)
        guard let (r, g, b, a) = try? UIColor(rgba_throws: "#FFFFFF").rgba() else {
            XCTAssertTrue(false)
            return
        }
        XCTAssertEqual(r, 0xFF)
        XCTAssertEqual(g, 0xFF)
        XCTAssertEqual(b, 0xFF)
        XCTAssertEqual(a, 0xFF)
    }
    
    // MARK: - Eight-digit
    func testEightDigitMin() {
        let (red, green, blue, alpha) = UIColor(hex8: 0x00000000).rgba()
        XCTAssertEqual(red, 0)
        XCTAssertEqual(green, 0)
        XCTAssertEqual(blue, 0)
        XCTAssertEqual(alpha, 0)
        guard let (r, g, b, a) = try? UIColor(rgba_throws: "#00000000").rgba() else {
            XCTAssertTrue(false)
            return
        }
        XCTAssertEqual(r, 0)
        XCTAssertEqual(g, 0)
        XCTAssertEqual(b, 0)
        XCTAssertEqual(a, 0)
    }
    
    func testEightDigitStep() {
        let (red, green, blue, alpha) = UIColor(hex8: 0x12345678).rgba()
        XCTAssertEqual(red, 0x12)
        XCTAssertEqual(green, 0x34)
        XCTAssertEqual(blue, 0x56)
        XCTAssertEqual(alpha, 0x78)
        guard let (r, g, b, a) = try? UIColor(rgba_throws: "#12345678").rgba() else {
            XCTAssertTrue(false)
            return
        }
        XCTAssertEqual(r, 0x12)
        XCTAssertEqual(g, 0x34)
        XCTAssertEqual(b, 0x56)
        XCTAssertEqual(a, 0x78)
    }
    
    func testEightDigitMax() {
        let (red, green, blue, alpha) = UIColor(hex6: 0xFFFFFFFF).rgba()
        XCTAssertEqual(red, 0xFF)
        XCTAssertEqual(green, 0xFF)
        XCTAssertEqual(blue, 0xFF)
        XCTAssertEqual(alpha, 0xFF)
        guard let (r, g, b, a) = try? UIColor(rgba_throws: "#FFFFFFFF").rgba() else {
            XCTAssertTrue(false)
            return
        }
        XCTAssertEqual(r, 0xFF)
        XCTAssertEqual(g, 0xFF)
        XCTAssertEqual(b, 0xFF)
        XCTAssertEqual(a, 0xFF)
    }
    
    // MARK: - String (With error)
    
    func testStringInputErrorMissingHashMarkAsPrefix() {
        do {
            let _ = try UIColor(rgba_throws: "FFFFFFFF")
        } catch UIColorInputError.missingHashMarkAsPrefix {
            XCTAssertTrue(true)
        } catch UIColorInputError.unableToScanHexValue {
            XCTAssertTrue(false)
        } catch UIColorInputError.mismatchedHexStringLength {
            XCTAssertTrue(false)
        } catch {
            XCTAssertTrue(false)
        }
    }
    
    func testStringInputErrorMismatchedHexStringLength() {
        do {
            let _ = try UIColor(rgba_throws: "#FFFFFFF")
        } catch UIColorInputError.missingHashMarkAsPrefix {
            XCTAssertTrue(false)
        } catch UIColorInputError.unableToScanHexValue {
            XCTAssertTrue(false)
        } catch UIColorInputError.mismatchedHexStringLength {
            XCTAssertTrue(true)
        } catch {
            XCTAssertTrue(false)
        }
    }
    
    func testStringInputErrorUnableToScanHexValue() {
        do {
            let _ = try UIColor(rgba_throws: "#ONMPQRST")
        } catch UIColorInputError.missingHashMarkAsPrefix {
            XCTAssertTrue(false)
        } catch UIColorInputError.unableToScanHexValue {
            XCTAssertTrue(true)
        } catch UIColorInputError.mismatchedHexStringLength {
            XCTAssertTrue(false)
        } catch {
            XCTAssertTrue(false)
        }
    }
    
    // MARK: - String (With default color)
    
    func testStringDefaultColor() {
        var color = UIColor("FFFFFFFF")
        XCTAssertEqual(color, UIColor.clear)
        color = UIColor("#FFFFFFF")
        XCTAssertEqual(color, UIColor.clear)
        color = UIColor("#ONMPQRST")
        XCTAssertEqual(color, UIColor.clear)
    }
    
    // MARK: - Hex string output
    
    func testStringOutput() {
        let color = UIColor(red: CGFloat(0x22 / 255.0), green: CGFloat(0x44 / 255.0), blue: CGFloat(0x66 / 255.0), alpha: CGFloat(0x88 / 255.0))
        XCTAssertEqual("#224466", color.hexString(false))
        XCTAssertEqual("#22446688", color.hexString(true))
        
        let hexColor = UIColor("#AABBCCDD", defaultColor: UIColor.yellow);
        XCTAssertEqual("#AABBCC", hexColor.hexString(false))
        XCTAssertEqual("#AABBCCDD", hexColor.hexString(true))
    }
    
    // MARK: - Convert argb string to rgba string
    
    func testArgb2rgba() {
        let rgba = "#2468".argb2rgba()
        XCTAssertEqual("#4682", rgba)
        
        let rrggbbaa = "#22446688".argb2rgba()
        XCTAssertEqual("#44668822", rrggbbaa)
    }
}

extension UIColor {
    fileprivate func toUInt8(_ value: CGFloat) -> UInt8 {
        let multiplier = CGFloat(255)
        return UInt8(value * multiplier)
    }
    
    fileprivate func rgba() -> (red: UInt8, green: UInt8, blue: UInt8, alpha: UInt8) {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        self.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        return (toUInt8(red), toUInt8(green), toUInt8(blue), toUInt8(alpha))
    }
}

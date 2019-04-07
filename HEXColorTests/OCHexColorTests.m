//
//  OCHexColorTests.m
//  HEXColorTests
//
//  Created by Xiaodong Ye on 1/16/18.
//  Copyright © 2018 P.D.Q. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "HEXColorTests-Bridging-Header.h"

@interface OCHexColorTests : XCTestCase

@end

@implementation OCHexColorTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testOC {
   CGFloat r, g, b, a;
   UIColor *hexColor = [[UIColor alloc] initWithHex3:0x000 alpha:1];
   [hexColor getRed:&r green:&g blue:&b alpha:&a];
   XCTAssertEqual(r, 0);
   XCTAssertEqual(g, 0);
   XCTAssertEqual(b, 0);
   XCTAssertEqual(a, 1);
}

@end

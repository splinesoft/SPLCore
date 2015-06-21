//
//  SPLCoreTests.m
//  SPLCore
//
//  Created by Jonathan Hersh on 2/16/14.
//  Copyright (c) 2014 Splinesoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <XCTest/XCTest.h>
#define EXP_SHORTHAND
#import <Expecta.h>
#import <SPLCore.h>

@interface SPLCoreTests : XCTestCase

@end

@implementation SPLCoreTests

- (void)testStringContainsString
{
    NSString *str = @"this and that";
    expect(![str stringContainsString:@"lala"]);
    expect([str stringContainsString:@"and"]);
    expect([str stringContainsString:@"hat"]);
    expect([str stringContainsString:@"thi"]);
}

- (void)testFloatHelpers
{
    CGFloat f = 3.1f;
    
    XCTAssertEqualWithAccuracy(SPLFloat_ceil(f), 4.0f, FLT_EPSILON, @"Should ceil up");
    XCTAssertEqualWithAccuracy(SPLFloat_floor(f), 3.0f, FLT_EPSILON, @"Should floor down");
    XCTAssertEqualWithAccuracy(SPLFloat_round(f), 3.0f, FLT_EPSILON, @"Should round down");
}

- (void)testApplicationInfo
{
    XCTAssertNotNil([UIApplication applicationName], @"App name should not be nil");
    XCTAssertNotNil([UIApplication applicationVersion], @"App version should not be nil");
    XCTAssertNotNil([UIApplication applicationBuild], @"App build should not be nil");
}

@end

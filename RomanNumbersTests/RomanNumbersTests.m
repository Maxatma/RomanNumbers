//
//  RomanNumbersTests.m
//  RomanNumbersTests
//
//  Created by Alexander Zaporozhchenko on 6/27/16.
//  Copyright © 2016 Alexander Zaporozhchenko. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSNumber+RNRoman.h"

@interface RomanNumbersTests : XCTestCase

@end

@implementation RomanNumbersTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testRandomNumbers
{
    NSArray *numbers = @[ @1, @2, @3, @4, @5, @6, @7, @8, @9, @10, @11, @14, @15, @18, @45, @532, @1301, @2111, @3999];
    NSArray *answers = @[ @"I", @"II", @"III", @"IV", @"V", @"VI", @"VII",@"VIII", @"IX", @"X", @"XI",@"XIV", @"XV", @"XVIII", @"XLV", @"DXXXII", @"MCCCI", @"MMCXI", @"MMMCMXCIX"];
    
    [numbers enumerateObjectsUsingBlock:^(NSNumber *arabic, NSUInteger idx, BOOL * _Nonnull stop) {
        NSString *roman  = [arabic romanString];
        NSString *answer = answers[idx];
        XCTAssertTrue([roman isEqualToString:answer], @"Roman %@ is not equal to answer : %@",roman, answer);
    }];
}


@end

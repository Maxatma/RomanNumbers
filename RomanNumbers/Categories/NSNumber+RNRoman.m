//
//  NSNumber+RNRoman.m
//  RomanNumbers
//
//  Created by Alexander Zaporozhchenko on 6/27/16.
//  Copyright © 2016 Alexander Zaporozhchenko. All rights reserved.
//

#import "NSNumber+RNRoman.h"

static NSUInteger const kMaxRoman = 3999;

@implementation NSNumber (RNRoman)

- (NSString *)romanString
{
    NSInteger n = [self integerValue];
    if (n > kMaxRoman) {
        return @"";
    }
    
    NSArray *romanValues      = @[@"M", @"CM", @"D", @"CD", @"C", @"XC", @"L", @"XL", @"X", @"IX", @"V", @"IV", @"I"];
    NSUInteger arabicValues[] = {1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1};
    
    NSMutableString *numeralString = [NSMutableString new];
    
    for (NSUInteger i = 0; i < romanValues.count; i++)
    {
        while (n >= arabicValues[i])
        {
            n -= arabicValues[i];
            [numeralString appendString:[romanValues objectAtIndex:i]];
        }
    }
    
    return numeralString;
}

@end

//
//  LeapYear.m
//  oc_OOAndBasicSyntax
//
//  Created by pan dabo on 13-6-29.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import "LeapYear.h"

@implementation LeapYear

#define IS_LEAP_YEAR year % 4 == 0 && year % 100 != 0 \
|| year % 400 == 0

#define IS_LEAP_YEAR_NEW(y)  y % 4 == 0 && y % 100 != 0 \
|| y % 400 == 0

{
    int year;
}

-(void) isLeapYear:(int) y
{
    NSLog(@"year =  %i", year);
    year = y;
    NSLog(@"year =  %i", year);
    if (IS_LEAP_YEAR) {
        NSLog(@"is leap year!");
    }else
    {
        NSLog(@"is not leap year!");
    }
}


-(void) isLeapYear_New:(int) y
{
    if (IS_LEAP_YEAR_NEW(y)) {
        NSLog(@"is leap year!");
    }else
    {
        NSLog(@"is not leap year!");
    }
}

@end

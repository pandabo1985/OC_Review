//
//  Chapter10_DataTypes.m
//  oc_OOAndBasicSyntax
//
//  Created by pan dabo on 13-6-18.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import "Chapter10_DataTypes.h"

@implementation Chapter10_DataTypes

-(void)chapter10_03
{
    enum month{
        january = 1, february, march, april, may, june, july, august, september, october, november, december
    };
    
    enum month amonth;
    
    int days;
    NSLog(@"Enter month number: ");
    scanf("%i", &amonth);
    switch (amonth) {
        case january:
        case march:
        case may:
        case july:
        case august:
        case october:
        case december:
            days = 31;
            break;
        case april:
        case june:
        case september:
        case november:
            days =30;
        case february:
            days = 28;
            
        default:
            NSLog(@"bad month number");
            days = 0;
            break;
    }
    
    if (days != 0) {
        NSLog(@"Number of days is %i",days);
    }
    if (amonth == february) {
        NSLog(@"...or 29 if it is a leap year");
    }
}

@end

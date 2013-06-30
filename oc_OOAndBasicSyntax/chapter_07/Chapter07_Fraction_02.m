//
//  Chapter07_Fraction_02.m
//  oc_OOAndBasicSyntax
//
//  Created by pan dabo on 13-6-15.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import "Chapter07_Fraction_02.h"

@implementation Chapter07_Fraction_02

@synthesize numerator,denominator;

-(void) print
{
    NSLog(@"%i/%i",numerator,denominator);
}
-(double) convertToNum
{
    if (denominator != 0) {
        return (double) numerator/denominator;
    }else
    {
        return NAN;
    }
}

@end

//
//  Chapter07_Fraction03.m
//  oc_OOAndBasicSyntax
//
//  Created by pan dabo on 13-6-15.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import "Chapter07_Fraction03.h"

@implementation Chapter07_Fraction03

@synthesize numorator,denominator;

-(void)print
{
    NSLog(@"%i/%i",numorator,denominator);
}
-(void)setTo:(int) n over:(int) d
{
    numorator = n;
    denominator = d;
    
}
-(double)convetToNum
{
    if (denominator != 0) {
        return (double) numorator / denominator;
    }else
    {
        return NAN;
    }
}

@end

//
//  Chapter07_Fraction_04.m
//  oc_OOAndBasicSyntax
//
//  Created by pan dabo on 13-6-15.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import "Chapter07_Fraction_04.h"


@implementation Chapter07_Fraction_04

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

-(void)add:(Chapter07_Fraction_04 *)f
{
    numorator = numorator * f.denominator + denominator * f.numorator;
    denominator = denominator * f.denominator;
}

-(Chapter07_Fraction_04 *) addResult:(Chapter07_Fraction_04 *) f
{
    Chapter07_Fraction_04 *result = [[Chapter07_Fraction_04 alloc] init];
    
    result.numorator =numorator * f.denominator + denominator * f.numorator;
    result.denominator = denominator * f.denominator;
    return result;
}

-(void)reduce
{
    int u = numorator;
    int v =denominator;
    int temp;
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
        
    }
    numorator /= u;
    denominator /= u;

}


@end

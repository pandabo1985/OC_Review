//
//  Fraction.m
//  oc_OOAndBasicSyntax
//
//  Created by pan dabo on 13-6-26.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

@synthesize denominator, numerator;

-(void) setTo:(int) n over:(int) d
{
    denominator = d;
    numerator = n;
}

-(void)reduce
{
    int u = numerator;
    int v =denominator;
    int temp;
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
        
    }
    numerator /= u;
    denominator /= u;
    
}

-(double)convetToNum
{
    if (denominator != 0) {
        return (double) numerator / denominator;
    }else
    {
        return NAN;
    }
}


-(void)print
{
    NSLog(@"%i/%i",numerator,denominator);
}

@end

//@implementation Fraction (MathOps)
//
//-(Fraction *) add: (Fraction *) f
//{
//    Fraction *result = [[Fraction alloc] init];
//    
//    result.numerator = (numerator* f.denominator) + (denominator * f.numerator);
//    [result reduce];
//    
//    return result;
//}
//
//-(Fraction *) mul: (Fraction *) f
//{
//    Fraction *result = [[Fraction alloc] init];
//    
//    result.numerator = numerator * f.numerator;
//    result.denominator = denominator * f.denominator;
//    [result reduce];
//    
//    return result;
//}
//
//-(Fraction *) sub: (Fraction *) f
//{
//    Fraction *reult = [[Fraction alloc] init];
//    
//    reult.numerator = (numerator * f.denominator) - (denominator * f.numerator);
//    reult.denominator = (denominator * f.denominator);
//    [reult reduce];
//    
//    return reult;
//}
//
//-(Fraction *) div: (Fraction *) f
//{
//    Fraction *result = [[Fraction alloc] init];
//    result.numerator = numerator * f.denominator;
//    result.denominator = denominator * f.numerator;
//    [result reduce];
//    
//    return result;
//}
//
//
//@end

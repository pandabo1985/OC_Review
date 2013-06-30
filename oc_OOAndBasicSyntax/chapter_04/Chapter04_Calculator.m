//
//  Chapter04_Calculator.m
//  oc_OOAndBasicSyntax
//
//  Created by pan dabo on 13-5-5.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import "Chapter04_Calculator.h"

@implementation Chapter04_Calculator

{
    double accumulator;
}

//累加算法
-(void) setAccumulator:(double) value
{
    accumulator = value;
}

-(void) clear
{
    accumulator = 0;
}

-(double) accumulator
{
    return  accumulator;
}

//算术算法
-(void) add:(double) value
{
    accumulator += value;
}

-(void) subtract: (double) valule
{
    accumulator -= valule;
}

-(void) multply: (double) valule
{
    accumulator *=valule;
}

-(void) divide: (double) value
{
    accumulator /=value;
}

-(void)printCurrentAccumulator;
{
    NSLog(@"accumulator = %g",accumulator);
}

@end

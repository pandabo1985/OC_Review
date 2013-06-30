//
//  Chapter06_Caculator.m
//  oc_OOAndBasicSyntax
//
//  Created by pan dabo on 13-6-15.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import "Chapter06_Caculator.h"

@implementation Chapter06_Caculator
{
    double accumulator;
}

//累加器
-(void) setAccumulator:(double) value
{
    accumulator = value;
    
}

-(void)clear
{
    accumulator = 0;
}

-(double)accumulator
{
    return accumulator;
}

//算术方法
-(void) add:(double) value
{
    accumulator += value;
}

-(void) subtract:(double) value
{
    accumulator -= value;
}

-(void) multiply:(double) value
{
    accumulator *= value;
}

-(void) divide:(double) value
{
    accumulator /= value;
}

@end

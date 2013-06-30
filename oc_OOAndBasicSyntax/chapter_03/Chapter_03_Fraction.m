//
//  Fraction.m
//  oc_OOAndBasicSyntax
//
//  Created by pan dabo on 13-5-5.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import "Chapter_03_Fraction.h"

//implement用于描述数据（类对象的实例变量存储的数据），并实现接口中声明的方法。
//xcode 4.2以后可以在interface和implement中对实例变量进行声明。

@implementation Chapter_03_Fraction

{
    int numerator;
    int denominator;
}



-(void) print
{
    NSLog(@"%d/%d",numerator,denominator);
}

-(void) setNumerator:(int) n
{
    numerator = n;
}

-(void) setDenominator:(int) d
{
    denominator = d;
}

@end

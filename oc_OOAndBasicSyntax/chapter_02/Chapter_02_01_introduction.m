//
//  Chapter_02_01.m
//  oc_OOAndBasicSyntax
//
//  Created by pan dabo on 13-5-5.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import "Chapter_02_01_introduction.h"

@implementation Chapter_02_01_introduction

-(void)printHello{
    NSLog(@"hello oc, I am back!");
}

-(void)printNewLine{
    NSLog(@"\n.1\n..2\n...3\n....4\n");
}

/*
 OC中的函数声明格式有：
 -/+ (return type) function_name;
 
 -/+ (return type) function_name : (parameter type) parameter;
 
 -/+ (return type) function_name : (parameter type) parameter1 otherParameter : (parameter_type) parameter2
 
 以上参数说明:-表示一般函数，+表示静态函数。otherParameter是参数的别名(第一个参数的别名省略),在函数调用时方便指定。
 */
-(int)add:(int) num1 otherNum:(int)num2
{
    return num1 + num2;
}


@end

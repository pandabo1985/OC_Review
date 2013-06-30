//
//  Chapter06_MakingDecisions.m
//  oc_OOAndBasicSyntax
//
//  Created by pan dabo on 13-5-5.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import "Chapter06_MakingDecisions.h"
#import "Chapter06_Caculator.h"

@implementation Chapter06_MakingDecisions

-(void)checkIfNum1:(int) num1 bigThan:(int) num2
{
    if (num1 > num2) {
        NSLog(@"num1 > num2 : %d > %d", num1, num2);
    }else{
          NSLog(@"num1 < num2 : %d < %d", num1, num2);
    }
}

-(void)checkLeapYear:(int)year
{
    if ((year % 4 == 0 && year % 100 != 0)|| (year % 400 == 0)) {
        NSLog(@"%d is leap year.",year);
    }else
    {
        NSLog(@"%d is not leap year.",year);
    }
}

-(void) caculatorNum1:(double) num1 operation:(char)op number2:(double)num2
{
    Chapter06_Caculator *caculator = [[Chapter06_Caculator alloc] init];
    [caculator setAccumulator:num1];
    if (op=='+') {
        [caculator add:num2];
    }else if (op=='-'){
        [caculator subtract:num2];
    }else if (op =='*'){
        [caculator multiply:num2];
    }else if(op == '/'){
        if (num2 == 0) {
            NSLog(@"Division by zero.");
        }else{
        [caculator divide:num2];
        }
    }else
    {
        NSLog(@"Unknow divide op!");
        return;
    }
    NSLog(@"%2f",[caculator accumulator]);
    [caculator clear];
    NSLog(@"%2f",[caculator accumulator]);
}


@end

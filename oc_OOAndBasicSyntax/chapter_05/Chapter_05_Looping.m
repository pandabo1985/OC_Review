//
//  Chapter_05_Looping.m
//  oc_OOAndBasicSyntax
//
//  Created by pan dabo on 13-5-5.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import "Chapter_05_Looping.h"

@implementation Chapter_05_Looping

{
    int result;
}

-(void) forWhithNum: (int) num
{
    result = 0;
    for (int i = 1; i <= num; i++) {
        result += i;
    }
    
    NSLog(@"the result is : %d",result);
    
}

-(void) whileWithNum:(int)num
{
    result = 0;
    int i = 1;
    while (i <= num) {
        result += i;
        ++i;
    }
    NSLog(@"the result is : %d",result);
    
}
-(int) getMaxDivideNum: (int) v otherNum:(int) u
{
    result = 0;
    
    while (v != 0) {
        result = u % v;
        u = v;
        v = result;
    }
    return  u;
}


@end

//
//  ClassA.m
//  oc_OOAndBasicSyntax
//
//  Created by pan dabo on 13-6-15.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import "ClassA.h"

@implementation ClassA

-(void)initVar
{
    x = 100;
}

@end

@implementation ClassB

-(void) printVar
{
    NSLog(@"x = %i",x);
}

@end

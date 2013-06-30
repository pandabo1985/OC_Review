//
//  Chapter11_Proprocess.m
//  oc_OOAndBasicSyntax
//
//  Created by pan dabo on 13-6-29.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import "Chapter12_Proprocess.h"
#import "LeapYear.h"

@implementation Chapter12_Proprocess

-(void)chapter12_01
{
    LeapYear *l = [[LeapYear alloc] init];
    [l isLeapYear:2013];
}

-(void)chapter12_02
{
    LeapYear *l = [[LeapYear alloc] init];
    [l isLeapYear_New:2012];
}

@end

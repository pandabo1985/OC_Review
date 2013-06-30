//
//  Chapter11_category.m
//  oc_OOAndBasicSyntax
//
//  Created by pan dabo on 13-6-26.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import "Chapter11_category.h"
#import "Fraction.h"
#import "Square_New.h"

@implementation Chapter11_category

-(void) chapter11_01
{
 
    Fraction *a = [[Fraction alloc] init];
    Fraction *b = [[Fraction alloc] init];
    Fraction *result;
    
    [a setTo:1 over:3];
    [b setTo:2 over:5];
    [a print];
    NSLog(@" +");
    [b print];
    NSLog(@"------");
    result = [a add:b];
    [result print];
    NSLog(@"\n");
   
    [a print];
    NSLog(@" -");
    [b print];
    NSLog(@"------");
    result = [a sub:b];
    [result print];
    NSLog(@"\n");
    
    
    [a print];
    NSLog(@" *");
    [b print];
    NSLog(@"------");
    result = [a mul:b];
    [result print];
    NSLog(@"\n");
    
    
    [a print];
    NSLog(@" /");
    [b print];
    NSLog(@"------");
    result = [a div:b];
    [result print];
    NSLog(@"\n");
    
}


-(void) chapter11_02
{
    Square_New *s = [[Square_New alloc] init];
    [s setSide:3];
    NSLog(@"side == %i",[s side]);
    NSLog(@"area == %i",[s area]);
    NSLog(@"perimeter == %i",[s perimeter]);
}

@end

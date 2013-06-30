//
//  Chapter07_Class.m
//  oc_OOAndBasicSyntax
//
//  Created by pan dabo on 13-6-15.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import "Chapter07_Class.h"
#import "Chapter07_Fraction.h"
#import "Chapter07_Fraction_02.h"
#import "Chapter07_Fraction03.h"
#import "Chapter07_Fraction_04.h"


@implementation Chapter07_Class

-(void)chapter07_01
{
    Chapter07_Fraction *fraction = [[Chapter07_Fraction alloc] init];
    [fraction setNumerator:1];
    [fraction setDenominator:3];
    [fraction print];
    [fraction convertToNum];
     NSLog(@"%f",[fraction convertToNum]);
}


-(void)chapter07_02
{
    Chapter07_Fraction_02 *fraction = [[Chapter07_Fraction_02 alloc] init];
    [fraction setNumerator:2];
    [fraction setDenominator:6.0];
    [fraction print];
    NSLog(@"%f",[fraction convertToNum]);

}

-(void) chapter07_03
{
    Chapter07_Fraction03 *fraction = [[Chapter07_Fraction03 alloc] init];
    [fraction setTo:3 over:9.0];
    [fraction print];
    NSLog(@"%f",[fraction convetToNum]);
}


-(void) chapter07_04
{
    Chapter07_Fraction_04 *fraction = [[Chapter07_Fraction_04 alloc] init];
    [fraction setTo:1 over:4];
    [fraction print];
    Chapter07_Fraction_04 *f = [[Chapter07_Fraction_04 alloc] init];
    [f setTo:2 over:6];
    [f print];
    [fraction add:f];
    [fraction print];
    [fraction reduce];
    NSLog(@"约分后：");
    [fraction print];
    
}
@end

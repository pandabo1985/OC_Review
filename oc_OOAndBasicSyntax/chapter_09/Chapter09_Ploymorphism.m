//
//  Chapter09_Ploymorphism.m
//  oc_OOAndBasicSyntax
//
//  Created by pan dabo on 13-6-16.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import "Chapter09_Ploymorphism.h"
#import "Chapter07_Fraction_04.h"
#import "Chapter09_Complex.h"
#import "Square.h"
#import "Rectangle.h"
#import "Chapter07_Fraction_04.h"


@implementation Chapter09_Ploymorphism

-(void)chapter09_01
{
    Chapter07_Fraction_04 *f1 = [[Chapter07_Fraction_04 alloc] init];
    Chapter07_Fraction_04 *f2 = [[Chapter07_Fraction_04 alloc] init];
    Chapter07_Fraction_04 *fractionResult;
    
    Chapter09_Complex *c1 = [[Chapter09_Complex alloc] init];
    Chapter09_Complex *c2 = [[Chapter09_Complex alloc] init];
    Chapter09_Complex *complexResult;
    
    [f1 setTo:1 over:10];
    [f2 setTo:2 over:15];
    
    [c1 setReal:18.0 andImaginary:2.5];
    [c2 setReal:-5.0 andImaginary:3.2];
    
    [c1 print]; NSLog(@" + ");[c2 print];
    NSLog(@"----------");
    complexResult = [c1 add:c2];
    [complexResult print];
    NSLog(@"\n");
    
    [f1 print]; NSLog(@" +"); [f2 print];
    NSLog(@"------------");
    fractionResult = [f1 addResult:f2];
    [fractionResult print];
    [fractionResult reduce];
    [fractionResult print];
    
    
}

-(void)chapter09_02
{
    id dataValue;
    
    Chapter09_Complex *c1 = [[Chapter09_Complex alloc] init];
    Chapter07_Fraction_04 *f1 = [[Chapter07_Fraction_04 alloc] init];
    
    [c1 setReal:18.0 andImaginary:3.0];
    [f1 setTo:1 over:3];
    
    dataValue = c1;
    [dataValue print];
    
    dataValue = f1;
    [dataValue print];
    
    
}

-(void)chapter09_03
{
    Square *mySquare = [[Square alloc]init];
    
    if ([mySquare isMemberOfClass:[Square class]] == YES) {
        NSLog(@"mySquare is a member of Squre class");
    }
    
    if ([mySquare isMemberOfClass:[Rectangle class]] == YES) {
        NSLog(@"mySquare is a member of Rectangle class");
    }
    
    if ([mySquare isMemberOfClass:[NSObject class]] == YES) {
        NSLog(@"mySquare is a member of NSOject class");
    }
    
    if ([mySquare isKindOfClass:[Square class]] == YES) {
        NSLog(@"mySquare is kind of Square");
    }
    
    if ([mySquare isKindOfClass:[Rectangle class]] == YES) {
        NSLog(@"mySquare is kind of Rectangle");
    }
    
    if ([mySquare isKindOfClass:[NSObject class]] == YES) {
        NSLog(@"mySquare is kind of NSObject");
    }
    
    if ([mySquare respondsToSelector:@selector(setSide:)] == YES) {
        NSLog(@"mySquare responds to setSide: method");
    }
    
    if ([mySquare respondsToSelector:@selector(setWidth:andHeight:)] == YES) {
        NSLog(@"mySquare responds to  setWith:andHeight: method");
    }
    
    if ([mySquare respondsToSelector:@selector(alloc)] == YES) {
        NSLog(@"mySquare responds to alloc:");
    }
    
    if ([Rectangle instancesRespondToSelector:@selector(setSide:)] == YES) {
        NSLog(@"Instances of Rectangle respond to setSide: method");
    }
    
    if ([Square instancesRespondToSelector:@selector(setSide:)] == YES) {
           NSLog(@"Instances of Square respond to setSide: method");
    }
    if ([Square isSubclassOfClass:[Rectangle class]] == YES) {
        NSLog(@"Square is a sub class of a Rectangle");
    }
}


-(void)chapter09_04
{
//    Chapter07_Fraction_04 *fraction = [[Chapter07_Fraction_04 alloc] init];
//    [fraction noSuchMethod];
//    NSLog(@"Exception continues!");
}

-(void)chapter09_05
{
    Chapter07_Fraction_04 *fraction = [[Chapter07_Fraction_04 alloc] init];
    @try {
        [fraction noSuchMethod];
    }
    @catch (NSException *exception) {
        NSLog(@"Caugh %@%@",[exception name],[exception reason]);
    }
    @finally {
          NSLog(@"Exception continues!");
    }

  
}

@end

//
//  Chapter08_Inheritance.m
//  oc_OOAndBasicSyntax
//
//  Created by pan dabo on 13-6-15.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import "Chapter08_Inheritance.h"
#import "ClassA.h"
#import "Rectangle.h"
#import "Square.h"

@implementation Chapter08_Inheritance

-(void)chapter08_01
{
    ClassB *b = [[ClassB alloc] init];
    [b initVar];
    [b printVar];
}

-(void) chapter08_02
{
    Rectangle *myRec = [[Rectangle alloc] init];
    [myRec setWidth:3 andHeight:5];
    NSLog(@"Rectangle: w = %i, h = %i",myRec.width, myRec.height);
    NSLog(@"Area = %i, Perimeter = %i",[myRec area], [myRec perimeter]);
}

-(void) chapter08_03
{
    Square *mySqu = [[Square alloc] init];
    [mySqu setSide:5];
    NSLog(@"Square s = %i",[mySqu side]);
     NSLog(@"Area = %i, Perimeter = %i",[mySqu area], [mySqu perimeter]);
}

@end

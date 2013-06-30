//
//  Rectangle.m
//  oc_OOAndBasicSyntax
//
//  Created by pan dabo on 13-6-15.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

@synthesize width, height;


-(void)setWidth:(int)w andHeight:(int)h
{
    width = w;
    height = h;
}

-(int)area
{
    return width * height;
}

-(int) perimeter
{
    return (width + height) * 2;
}

@end

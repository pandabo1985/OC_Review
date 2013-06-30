//
//  Square.m
//  oc_OOAndBasicSyntax
//
//  Created by pan dabo on 13-6-15.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import "Square.h"

@implementation Square

-(void) setSide: (int)s
{
    [self setWidth:s andHeight:s];
}
-(int) side
{
    return [self width];
}

@end

//
//  Square_New.m
//  oc_OOAndBasicSyntax
//
//  Created by pan dabo on 13-6-29.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import "Square_New.h"

@implementation Square_New

{
    Rectangle *rect;
}

- (id)init
{
    self = [super init];
    if (self) {
        rect = [[Rectangle alloc] init];
    }
    return self;
}

-(int) setSide: (int) s
{
    [rect setWidth:s andHeight:s];
    return [rect height];
}
-(int) side
{
    return [rect height];

}
-(int) area
{
    return [rect area];
}
-(int) perimeter
{
    return [rect perimeter];
}


@end

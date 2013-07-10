//
//  NSSet+Printing.m
//  oc_OOAndBasicSyntax
//
//  Created by pan dabo on 13-7-10.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import "NSSet+Printing.h"

@implementation NSSet (Printing)

-(void)print
{
    printf("{  ");
    
    for (NSNumber *element in self ){
        printf("%li  ",(long) [element integerValue]);
    }

    printf("} \n");
}

@end

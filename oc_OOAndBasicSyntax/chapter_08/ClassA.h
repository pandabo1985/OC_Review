//
//  ClassA.h
//  oc_OOAndBasicSyntax
//
//  Created by pan dabo on 13-6-15.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClassA : NSObject
{
    int x;
}
-(void)initVar;

@end


@interface ClassB : ClassA

-(void) printVar;

@end
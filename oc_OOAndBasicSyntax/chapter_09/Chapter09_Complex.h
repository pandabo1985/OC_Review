//
//  Chapter09_Complex.h
//  oc_OOAndBasicSyntax
//
//  Created by pan dabo on 13-6-16.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Chapter09_Complex : NSObject

@property double real, imaginary;

-(void) print;
-(void) setReal:(double)r andImaginary:(double) i;
-(Chapter09_Complex *)add:(Chapter09_Complex *)f;

@end

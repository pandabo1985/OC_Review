//
//  Chapter06_Caculator.h
//  oc_OOAndBasicSyntax
//
//  Created by pan dabo on 13-6-15.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Chapter06_Caculator : NSObject

//累加器
-(void) setAccumulator:(double) value;
-(void)clear;
-(double)accumulator;

//算术方法
-(void) add:(double) value;
-(void) subtract:(double) value;
-(void) multiply:(double) value;
-(void) divide:(double) value;



@end

//
//  Fraction.h
//  oc_OOAndBasicSyntax
//
//  Created by pan dabo on 13-6-26.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator, denominator;

-(void) setTo:(int) n over:(int) d;
//-(Fraction *) add: (Fraction *) f;
-(void) reduce;
-(double)convertToNum;
-(void)print;

@end

//@interface Fraction (MathOps)
//
//-(Fraction *) add: (Fraction *) f;
//-(Fraction *) mul: (Fraction *) f;
//-(Fraction *) sub: (Fraction *) f;
//-(Fraction *) div: (Fraction *) f;
//
//@end


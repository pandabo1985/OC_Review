//
//  Fraction+MathOps.h
//  oc_OOAndBasicSyntax
//
//  Created by pan dabo on 13-6-26.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import "Fraction.h"

@interface Fraction (MathOps)

-(Fraction *) add: (Fraction *) f;
-(Fraction *) mul: (Fraction *) f;
-(Fraction *) sub: (Fraction *) f;
-(Fraction *) div: (Fraction *) f;

@end

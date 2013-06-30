//
//  Chapter07_Fraction03.h
//  oc_OOAndBasicSyntax
//
//  Created by pan dabo on 13-6-15.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Chapter07_Fraction03 : NSObject

@property int numorator,denominator;

-(void)print;
-(void)setTo:(int) n over:(int) d;
-(double)convetToNum;

@end

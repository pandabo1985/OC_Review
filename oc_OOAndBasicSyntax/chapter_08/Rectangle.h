//
//  Rectangle.h
//  oc_OOAndBasicSyntax
//
//  Created by pan dabo on 13-6-15.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject

@property int width, height;

-(int) area;
-(int) perimeter;
-(void)setWidth:(int)w andHeight:(int) h;

@end

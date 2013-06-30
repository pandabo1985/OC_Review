//
//  AddressCard.h
//  oc_OOAndBasicSyntax
//
//  Created by pan dabo on 13-6-30.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject

-(void) setName: (NSString *) theName;
-(void) setEmail: (NSString *) theEmail;
-(NSString *)name;
-(NSString *)email;
-(void)setName:(NSString *)theName andEmail:(NSString *)theEmail;
-(void) print;
@end

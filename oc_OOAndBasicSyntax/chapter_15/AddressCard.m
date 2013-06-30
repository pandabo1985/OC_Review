//
//  AddressCard.m
//  oc_OOAndBasicSyntax
//
//  Created by pan dabo on 13-6-30.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard

{
    NSString *name;
    NSString *email;
    
}

-(void) setName: (NSString *) theName
{
    name = [NSString stringWithString:theName];
}
-(void) setEmail: (NSString *) theEmail
{
    email = [NSString stringWithString:theEmail];
}
-(NSString *)name
{
    return name;
}
-(NSString *)email
{
    return email;
}

-(void) print
{
    NSLog(@"============================");
    NSLog(@"|                  |");
    NSLog(@"| %-31s |",[name UTF8String]);
    NSLog(@"| %-31s |",[email UTF8String]);
    NSLog(@"|                  |");
    NSLog(@"|                  |");
    NSLog(@"|                  |");
    NSLog(@"|   o           o  |");
    NSLog(@"============================");
    
}

-(void)setName:(NSString *)theName andEmail:(NSString *)theEmail
{
    name = [NSString stringWithString:theName];
    email = [NSString stringWithString:theEmail];
}

@end

//
//  Chapter19_archive.m
//  oc_OOAndBasicSyntax
//
//  Created by pan dabo on 13-7-22.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import "Chapter19_archive.h"

@implementation Chapter19_archive

-(void)chapter19_01
{
    NSDictionary *glossary = [NSDictionary dictionaryWithObjectsAndKeys:@"A classs defined so other calsses can inherd from it",@"abstract class", @"To implement all the methods defined in a protocol",@"adopt",@"Storing an object for later use",@"archving",nil];
    if ([glossary writeToFile:@"glossary" atomically:YES] == NO) {
        NSLog(@"Save to file failed!");
    }
}

-(void)chapter19_02
{
    NSDictionary *glossary;
    glossary = [NSDictionary dictionaryWithContentsOfFile:@"glossary"];
    for (NSString *key in glossary) {
        NSLog(@" %@ :  %@",key,[glossary objectForKey:key]);
    }
}

-(void)chapter19_03
{
    NSDictionary *glossary = [NSDictionary dictionaryWithObjectsAndKeys:@"A classs defined so other calsses can inherd from it",@"abstract class", @"To implement all the methods defined in a protocol",@"adopt",@"Storing an object for later use",@"archving",nil];
    [NSArchiver archiveRootObject:glossary toFile:@"glossary.archive"];
}

-(void)chapter19_04
{
    NSDictionary *glossary;
    glossary = [NSKeyedUnarchiver unarchiveObjectWithFile:@"glossary.archive"];
    for (NSString *key in glossary) {
        NSLog(@"%@ : %@",key,[glossary objectForKey:key]);
    }
}

-(void)chapter19_05
{
    AddressCard *card1 = [[AddressCard alloc]init];
    AddressCard *card2  = [[AddressCard alloc] init];
    AddressCard *card3 = [[AddressCard alloc] init];
    AddressCard *card4 = [[AddressCard alloc] init];
    
    [card1 setName:@"panda1" andEmail:@"email_01"];
    [card2 setName:@"panda2" andEmail:@"email_02"];
    [card3 setName:@"panda3" andEmail:@"email_03"];
    [card4 setName:@"panda4" andEmail:@"email_04"];
    
    AddressBook *mybook = [AddressBook alloc];
    mybook = [mybook initWithName:@"panda"];
    
    [mybook addCard:card1];
    [mybook addCard:card2];
    [mybook addCard:card3];
    [mybook addCard:card4];
    
    if ([NSKeyedArchiver archiveRootObject:mybook toFile:@"addrbook.arch"] ==NO) {
        NSLog(@"fail");
    }else
    {
        NSLog(@"succeed");
    }

AddressBook *testBook;

testBook= [NSKeyedUnarchiver unarchiveObjectWithFile:@"addrbook.arch"];
[testBook list];

}
@end

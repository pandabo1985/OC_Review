//
//  Chapter15_Num_Str_Collections.m
//  oc_OOAndBasicSyntax
//
//  Created by pan dabo on 13-6-29.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import "Chapter15_Num_Str_Collections.h"
#import "AddressCard.h"
#import "AddressBook.h"
#import "NSSet+Printing.h"

@implementation Chapter15_Num_Str_Collections

-(void)chapter15_01
{
    NSNumber *myNumber, *floatNumber, *intNumber;
    NSInteger myInt;
    
    //integer 类型值
    
    intNumber = [NSNumber numberWithInteger:100];
    myInt = [intNumber integerValue];
    NSLog(@"%li",(long)myInt);
    
    //long
    myNumber = [NSNumber numberWithLong:0xabcdef];
    NSLog(@"%lx",[myNumber longLongValue]);
    
    //char
    
    myNumber = [NSNumber numberWithChar:'x'];
    NSLog(@"%c", [myNumber charValue]);
    
    //float
    floatNumber = [NSNumber numberWithFloat:100.00];
    NSLog(@"%g",[floatNumber floatValue]);
    //    NSLog(@"%g",floatNumber);
    
    //double
    myNumber = [NSNumber numberWithDouble:12345e+15];
    NSLog(@"%lg",[myNumber doubleValue]);
    
    NSLog(@"%lg",[myNumber integerValue]);
    
    if ([intNumber isEqualToNumber:floatNumber] == YES) {
        NSLog(@"Number are equal");
    }else
    {
        NSLog(@"Number are not equal");
    }
    
    if ([intNumber compare:myNumber] == NSOrderedAscending) {
        NSLog(@"First number is less than second");
    }
}


-(void)chapter15_02
{
    NSString *str = @"Programming is fun!";
    NSLog(@"%@",str);
}

-(void) chapter15_03
{
    
    NSString *str1 = @"this is string A";
    NSString *str2 = @"this is string B";
    NSString *res;
    NSComparisonResult compareResult;
    
    NSLog(@"Length of str1: %lu",[str1 length]);
    
    res = [NSString stringWithString:str1];
    NSLog(@"copy: %@",res);
    
    str2 = [str1 stringByAppendingString:str2];
    NSLog(@"Concatentaion: %@",str2);
    
    if ([str1 isEqualToString:res] == YES) {
        NSLog(@"str1 == res");
    }else
    {
        NSLog(@"str1 != res");
    }
    
    compareResult = [str1 compare: str2];
    if (compareResult == NSOrderedAscending) {
        NSLog(@"str1 < str2");
    }else if(compareResult == NSOrderedSame)
    {
        NSLog(@"str1 == str2");
    }else
    {
        NSLog(@"str1 > str2");
    }
    
    res = [str1 uppercaseString];
    NSLog(@"Uppercase coversion: %s", [res UTF8String]);
    
    res = [str1 lowercaseString];
    NSLog(@"Uppercase coversion: %s", [res UTF8String]);
    
    NSLog(@"Original string: %@", str1);
}

-(void)chapter15_04
{
    NSString *str1 =  @"This is string A";
    //    NSString *str2 = @"This is string B";
    NSString *res;
    NSRange  subRange;
    
    res = [str1 substringToIndex:3];
    NSLog(@"First 3 chars of str1 :%@",res);
    
    res = [str1 substringFromIndex:5];
    NSLog(@"Chars from index 5 of str1: %@",res);
    
    res = [[str1 substringFromIndex:8] substringToIndex:6];
    NSLog(@"Chars fomr index 8 throught 13: %@", res);
    
    subRange = [str1 rangeOfString:@"string A"];
    NSLog(@"String is at index %lu, lenght is %lu",subRange.location, subRange.length);
    
    subRange = [str1 rangeOfString:@"string B"];
    if (subRange.location == NSNotFound) {
        NSLog(@"String nof found");
    }else
    {
        NSLog(@"String is at index %lu, length is %lu",subRange.location, subRange.length);
    }
    
}

-(void) chapter15_05
{
    NSString *str1 = @"This is string A";
    NSString *search, *replace;
    NSMutableString *mstr;
    NSRange substr;
    
    mstr = [NSMutableString stringWithString:str1];
    NSLog(@"%@",mstr);
    
    [mstr insertString:@" mutable" atIndex:7];
    NSLog(@"%@",mstr);
    
    [mstr insertString:@" and string B" atIndex:[mstr length]];
    NSLog(@"%@", mstr);
    
    [mstr appendString:@" and string C"];
    NSLog(@"%@", mstr);
    
    [mstr deleteCharactersInRange:NSMakeRange(16, 13)];
    NSLog(@"%@", mstr);
    
    substr = [mstr rangeOfString:@"string B and"];
    if (substr.location != NSNotFound) {
        [mstr deleteCharactersInRange:substr];\
        NSLog(@"%@", mstr);
    }
    
    [mstr setString:@"This is string A"];
    NSLog(@"%@",mstr);
    
    [mstr replaceCharactersInRange:NSMakeRange(8, 8) withString:@"a mutable string"];
    NSLog(@"%@",mstr);
    
    search = @"This is";
    replace = @"An examle of";
    substr = [mstr rangeOfString:search];
    if (substr.location !=NSNotFound) {
        [mstr replaceCharactersInRange:substr withString:replace];
        NSLog(@"%@",mstr);
    }
    search = @"a";
    replace = @"X";
    substr = [mstr rangeOfString:search];
    while(substr.location != NSNotFound)
    {
        [mstr replaceCharactersInRange:substr withString:replace];
        substr = [mstr rangeOfString:search];
    }
    NSLog(@"%@",mstr);
}

-(void)chapter15_06
{
    int i;
    NSArray *monthNames = [NSArray arrayWithObjects:@"January", @"February", @"March", @"April", @"May", @"June", @"July", @"August", @"September", @"October", @"November", @"December",nil];
    NSLog(@"Month Name");
    NSLog(@"===== ====");
    for (i=0; i < 12; ++i) {
        NSLog(@"% 2i %@", i+1, [monthNames objectAtIndex:i]);
    }
}

-(void) chapter15_07
{
    NSMutableArray *numbers = [NSMutableArray array];
    NSNumber *myNumber;
    int i;
    
    for (i = 0; i < 10; ++i) {
        myNumber = [NSNumber numberWithInt:i];
        [numbers addObject:myNumber];
    }
    
    for (i = 0; i < 10; ++i) {
        myNumber = [numbers objectAtIndex:i];
        NSLog(@"%@",myNumber);
    }
    
    NSLog(@"======Using a single NSLog");
    NSLog(@"%@",numbers);
    NSLog(@"%@",[numbers description]);
}

-(void)chapter15_08
{
    NSString *aName = @"Julia Kochan";
    NSString *aEmail = @"jeeellli@sss.com";
    AddressCard *card1 = [[AddressCard alloc] init];
    [card1 setName:aName];
    [card1 setEmail:aEmail];
    [card1 print];
}

-(void) chapter15_09
{
    AddressCard *card1 = [[AddressCard alloc] init];
    [card1 setName:@"panda" andEmail:@"panda@www.com"];
    [card1 print];
    AddressCard *card2 = [[AddressCard alloc] init];
    [card2 setName:@"lulu" andEmail:@"lulu@www.com"];
    [card2 print];
}

-(void) chapter15_10
{
    AddressBook *books = [[AddressBook alloc] init];
    [books initWithName:@"panda_books"];
    
    AddressCard *card1 = [[AddressCard alloc] init];
    [card1 setName:@"jjjjj kkk" andEmail:@"jjjjj@sss.com"];
    
    [books addCard:card1];
    
    AddressCard *card2 = [[AddressCard alloc] init];
    [card2 setName:@"mmmmm" andEmail:@"mmmmm@11ddd.com"];
    [books addCard:card2];
    
    [books list];
    NSLog(@"books entries %i",[books entries]);
}

-(void)chapter15_11
{
    NSMutableDictionary *glossary = [NSMutableDictionary dictionary];
    [glossary setObject:@"A class defined so other classes can inherit from it" forKey:@"abstract class"];
    [glossary setObject:@"To implement all the methods defined in a protocol" forKey:@"adopt"];
    [glossary setObject:@"Storing an object for larter use" forKey:@"archiving"];
    
    NSLog(@"abstract class: %@",[glossary objectForKey:@"abstract class"]);
    NSLog(@"adopt: %@",[glossary objectForKey:@"adopt"]);
    NSLog(@"archiving: %@",[glossary objectForKey:@"archiving"]);
    
    
}

-(void) chapter15_12
{
    NSLog(@"===============");
    NSDictionary *glossary = [NSDictionary dictionaryWithObjectsAndKeys:@"A class defined so other classes can inherit from it",
                              @"abstract class",
                              @"To implement all the methods defined in a protocol",
                              @"adopt",
                              @"Storing an object for larter use",
                              @"archiving",
                              nil];
   for(NSString *key in glossary)
       NSLog(@"%@: %@",key,[glossary objectForKey:key]);
}


#define INTOBJ(v) [NSNumber numberWithInteger: v]

-(void) chapter15_13
{
    NSMutableSet *set1 = [NSMutableSet setWithObjects:INTOBJ(1), INTOBJ(3), INTOBJ(5),INTOBJ(10), nil];
    NSMutableSet *set2 = [NSMutableSet setWithObjects:INTOBJ(-5),INTOBJ(100),INTOBJ(3),INTOBJ(5), nil];
    NSSet *set3 = [NSSet setWithObjects:INTOBJ(12),INTOBJ(200),INTOBJ(3), nil];
    
    NSLog(@"set1: ");
    [set1 print];
    NSLog(@"set2: ");
    [set2 print];
    NSLog(@"set3: ");
    [set3 print];
    if ([set1 isEqual:set2] == YES) {
        NSLog(@"set1 equals set2");
    }else
    {
        NSLog(@"set1 is not equals set2");
    }
    
    if ([set1 containsObject:INTOBJ(10)] == YES) {
        NSLog(@"set1 contains 10");
    }else
    {
        NSLog(@"set1 no contains 10");
    }
    
    if ([set2 containsObject:INTOBJ(10)] == YES) {
        NSLog(@"set2 contains 10");
    }else
    {
        NSLog(@"set2 no contains 10");
    }

    [set1 addObject:INTOBJ(4)];
    [set1 removeObject:INTOBJ(10)];
    [set1 print];
    
    NSLog(@"=========");
    [set1 print];
    [set2 print];
    [set1 intersectSet:set2];
    [set1 print];
    
    NSLog(@"=========");
    [set1 print];
    [set3 print];
    [set1 unionSet:set3];
    [set1 print];
    
}

@end

//
//  AddressCard_New.h
//  oc_OOAndBasicSyntax
//
//  Created by pan dabo on 13-6-30.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

@interface AddressBook : NSObject

@property(nonatomic,copy) NSString *bookName;
@property(nonatomic, copy) NSMutableArray *book;

-(id) initWithName:(NSString *)name;
-(void) addCard:(AddressCard *) theCard;
-(int) entries;
-(void) list;


@end

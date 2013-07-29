//
//  Chapter16_ManagerFile.m
//  oc_OOAndBasicSyntax
//
//  Created by pan dabo on 13-7-14.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import "Chapter16_ManagerFile.h"

@implementation Chapter16_ManagerFile

-(void)chapter16_01
{
    NSString *fName = @"testfile";
    NSFileManager *fm;
    NSDictionary *arr;
    
    fm = [NSFileManager defaultManager];
    NSString *filePath = [fm currentDirectoryPath];
    NSLog(@"%@",filePath);
    
    fName = [[filePath stringByAppendingString:@"/"]stringByAppendingString:fName];
    NSLog(@"%@",fName);
    
    if ([fm fileExistsAtPath:fName] == NO) {
        NSLog(@"File doesn't exist!");
    }
    
    if ([fm copyItemAtPath:fName toPath:@"newfile" error:NULL] == NO) {
        NSLog(@"File Copy failed!");
    }
    
    if ([fm contentsEqualAtPath:fName andPath:@"newfile"] == NO) {
        NSLog(@"Files are not Equal!");
    }
    
    if ([fm moveItemAtPath:@"newfile" toPath:@"newfile2" error:NULL] == NO) {
        NSLog(@"File rename Failde!");
    }
    
    if ((arr = [fm attributesOfItemAtPath:@"newfiles" error:NULL]) == nil) {
        NSLog(@"Could't get file arrtibutes!");
    }
    
    NSLog(@"File size is %llu bytes",[[arr objectForKey:NSFileSize] unsignedLongLongValue]);
    
    if ([fm removeItemAtPath:fName error:NULL] == NO) {
        NSLog(@"file remove faile!");
    }
    
    NSLog(@"All operations were successful");
    
    NSLog(@"%@",[NSString stringWithContentsOfFile:@"newfile2" encoding:NSUTF8StringEncoding error:NULL]);
    
}

@end

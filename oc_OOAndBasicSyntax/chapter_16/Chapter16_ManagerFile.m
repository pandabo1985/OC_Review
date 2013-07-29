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
    NSString *fName = @"/Volumes/databack/OC_Review/oc_OOAndBasicSyntax/chapter_16/testfile";
    NSFileManager *fm;
    NSDictionary *arr;
    
    fm = [NSFileManager defaultManager];
//    NSString *filePath = [fm currentDirectoryPath];
//    NSLog(@"%@",filePath);
//    
//    fName = [[filePath stringByAppendingString:@"/"]stringByAppendingString:fName];
    NSLog(@"%@",fName);
    [fm changeCurrentDirectoryPath:@"/Volumes/databack/OC_Review/oc_OOAndBasicSyntax/chapter_16"];
    NSLog(@"%@",[fm currentDirectoryPath]);
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


-(void)Chapter16_02
{
    NSFileManager *fm;
    NSData *fileData;
    
    fm = [NSFileManager defaultManager];
    NSLog(@"%@",[fm currentDirectoryPath]);
    fileData = [fm contentsAtPath:@"newfile2"];
    if(fileData == nil) {
        NSLog(@"File read failed!");
    }
    
    if ([fm createFileAtPath:@"newfile3" contents:fileData attributes:nil] == NO) {
        NSLog(@"Coundn't crreat the copy!");
    }
    
    NSLog(@"File copy was successful!");
    
}

-(void)Chapter16_03
{
    NSString *dirName = @"testdir";
    NSString *path;
    NSFileManager *fm;
    
    fm = [NSFileManager defaultManager];
    path = [fm currentDirectoryPath];
    NSLog(@"Current directory path is %@",path);
    
    if ([fm createDirectoryAtPath:dirName withIntermediateDirectories:YES attributes:nil error:NULL]) {
        NSLog(@"Coundn't create directory!");
    }
    
    if ([fm moveItemAtPath:dirName toPath:@"newdir" error:NULL] == NO) {
        NSLog(@"Direcoty rename failed");
    }
    
    if ([fm changeCurrentDirectoryPath:@"newdir"] == NO) {
        NSLog(@"Change directory failed");
    }
    
    path = [fm currentDirectoryPath];
    NSLog(@"Current directory path is %@",path);
     
    NSLog(@"All operation were successful!");
}


-(void)Chapter16_04
{
    NSLog(@"====Chapter16_04====");
    NSString *path;
    NSFileManager *fm;
    NSDirectoryEnumerator *dirEnum;
    NSArray *dirArray;
    
    fm = [NSFileManager defaultManager];
    
    path = [fm currentDirectoryPath];
      NSLog(@"Contents of %@",path);
    [fm changeCurrentDirectoryPath:@"./"];
      path = [fm currentDirectoryPath];
    dirEnum = [fm enumeratorAtPath:path];
    NSLog(@"Contents of %@",path);
    
    while ((path = [dirEnum nextObject]) != nil) {
        NSLog(@" %@",path);
    }
    
    NSLog(@"========");
    
    dirArray = [fm contentsOfDirectoryAtPath:[fm currentDirectoryPath] error:NULL];
    for (path in dirArray) {
        NSLog(@"%@",path);
    }
}


-(void)Chapter16_05
{
    NSLog(@"============");
    NSString *fName = @"path.m";
    NSFileManager *fm;
    NSString *path, *tempdir, *extension, *homedir, *fullpath;
    
    NSArray *components;
    
    fm = [NSFileManager defaultManager];
    
    tempdir = NSTemporaryDirectory();
    NSLog(@"Temporary Directory is %@",tempdir);
    path = [fm currentDirectoryPath];
    NSLog(@"Base dir is %@",[path lastPathComponent]);
    
    fullpath = [path stringByAppendingPathComponent:fName];
    
    NSLog(@"fullpath to %@ is %@",fName,fullpath);
    
    extension = [fullpath pathExtension];
    NSLog(@"extension for %@ is %@",fullpath,extension);
    
    homedir = NSHomeDirectory();
    NSLog(@"Your home directory is %@",homedir);
    
    components = [homedir pathComponents];
    for (path in components) {
        NSLog(@"path = %@",path);
    }
    
}

-(void)chapter16_06
{
//    NSFileManager *fm;
//    NSString *source, *dest;
//    BOOL isDir;
//    NSProcessInfo *proc = [NSProcessInfo processInfo];
//    NSArray *args = [proc arguments];
//    fm = [NSFileManager defaultManager];
//    if ([args count] != 3) {
//        NSLog(@"Usage: %@ src dest",[proc processName]);
//    }
//    
//    source = [args objectAtIndex:1];
//    dest = [args objectAtIndex:2];
//    
//    if ([fm isReadableFileAtPath:source] == NO) {
//        NSLog(@"Can't read %@",source);
//    }
//    
//    [fm fileExistsAtPath:dest isDirectory: &isDir];
//    if (isDir == YES) {
//        dest = [dest stringByAppendingPathComponent:[source lastPathComponent]];
//    }
//    [fm removeItemAtPath:dest error:NULL];
//    if ([fm copyItemAtPath:source toPath:dest error:NULL] == NO) {
//        NSLog(@"Copy failed!");
//    }
//    
//    NSLog(@"Copy of %@ succeeded!",source,dest);
}
-(void)chapter16_07
{
    NSLog(@"=====1607=====");
    NSFileHandle *inFile, *outFile;
    
    NSData *buffer;
    NSFileManager *fm = [NSFileManager defaultManager];
    NSLog(@"%@",[fm currentDirectoryPath]);
    
    inFile = [NSFileHandle fileHandleForReadingAtPath:@"testfile.rtf"];

    if (inFile == nil) {
        NSLog(@"Open of testfile for reading failed");
        return;
    }
    
    [[NSFileManager defaultManager] createFileAtPath:@"testout" contents:nil attributes:nil];
    
    outFile = [NSFileHandle fileHandleForReadingAtPath:@"testout"];
    if (outFile == nil) {
        NSLog(@"Open of testout for writing failed");
    }
    
//    [outFile truncateFileAtOffset:0];
//    
//    buffer = [inFile readDataToEndOfFile];
//    
//    [outFile writeData:buffer];
//    
//    [inFile closeFile];
//    [outFile closeFile];
    
    NSLog(@"%@",[NSString stringWithContentsOfFile:@"testfile.rtf" encoding:NSUTF8StringEncoding error:NULL]);
    NSLog(@"%@",[NSString stringWithContentsOfFile:@"testout" encoding:NSUTF8StringEncoding error:NULL]);
    
}

-(void)chapter16_08
{
    NSURL *myURL = [NSURL URLWithString:@"http://www.baidu.com"];
    NSString *myHomePage = [NSString stringWithContentsOfURL:myURL encoding:NSUTF8StringEncoding error:NULL];
    NSLog(@"%@",myHomePage);
}

@end

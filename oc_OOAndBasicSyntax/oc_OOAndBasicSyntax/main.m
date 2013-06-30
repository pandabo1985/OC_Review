//
//  main.m
//  oc_OOAndBasicSyntax
//
//  Created by pan dabo on 13-5-5.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Chapter_02_01_introduction.h"
#import "Chapter_03_Fraction.h"
#import "Chapter04_DataTypes.h"
#import "Chapter04_Calculator.h"
#import "Chapter_05_Looping.h"
#import "Chapter06_MakingDecisions.h"
#import "Chapter07_Class.h"
#import "Chapter08_Inheritance.h"
#import "Chapter09_Ploymorphism.h"
#import "Chapter10_DataTypes.h"
#import "Chapter11_category.h"
#import "Chapter12_Proprocess.h"
#import "Chapter15_Num_Str_Collections.h"


int main(int argc, const char * argv[])
{
    
    
    @autoreleasepool {
        int chapter = 2;
        /**
         *OC 第二章内容
         */
        NSLog(@"***********第<%d>章**************\n\n",chapter++);
        Chapter_02_01_introduction *chapter_01 = [[Chapter_02_01_introduction alloc] init];
        [chapter_01 printHello];
        [chapter_01 printNewLine];
        NSLog(@"5 + 3 =%d",[chapter_01 add:5 otherNum:3]);
        
        /*
         *OC 第三章 类 对象 方法
         *
         */
         NSLog(@"***********第<%d>章**************\n\n",chapter++);
        Chapter_03_Fraction *fraction = [[Chapter_03_Fraction alloc] init];
        [fraction setNumerator:1];
        [fraction setDenominator:3];
        NSLog(@"fraction result is :");
        [fraction print];
        
        /*
         *OC 第四章 数据结构和表达式
         *
         */
         NSLog(@"***********第<%d>章**************\n\n",chapter++);
        Chapter04_DataTypes *dataTypes = [[Chapter04_DataTypes alloc] init];
        [dataTypes setIntegerVar:100];
        [dataTypes setDoubleVar:3.14e+11];
        [dataTypes setFloatingVar:3.1415];
        [dataTypes setCharVar:'F'];
        NSLog(@"int = %i",[dataTypes integerVar]);
        NSLog(@"double = %e",[dataTypes doubleVar]);
        NSLog(@"float = %f",[dataTypes floatingVar]);
        NSLog(@"char = %c",[dataTypes charVar]);
        
        Chapter04_Calculator *calculator = [[Chapter04_Calculator alloc] init];
        [calculator setAccumulator:10.00];
        [calculator add:10];
        [calculator printCurrentAccumulator];
        [calculator subtract:5];
        [calculator printCurrentAccumulator];
        [calculator multply:15.00];
        [calculator printCurrentAccumulator];
        [calculator divide:3.0];
        [calculator printCurrentAccumulator];
        
        /*
         *OC 第五章 循环结构
         *
         */
        NSLog(@"***********第<%d>章**************\n\n",chapter++);
        Chapter_05_Looping *loop = [[Chapter_05_Looping alloc] init];
        [loop forWhithNum:5];
        [loop forWhithNum:6];
        [loop forWhithNum:200];
        [loop whileWithNum:200];
        NSLog(@"%d",[loop getMaxDivideNum:15 otherNum:5]);
          NSLog(@"%d",[loop getMaxDivideNum:5 otherNum:15]);
        /*
         *OC 第六章 选择结构         *
         */
        NSLog(@"***********第<%d>章**************\n\n",chapter++);
        Chapter06_MakingDecisions *decisions = [[ Chapter06_MakingDecisions alloc] init];
        [decisions checkIfNum1:3 bigThan:4];
        [decisions checkLeapYear:1900];
        [decisions checkLeapYear:2000];
        
        double num1 = 25;
        double num2 = 5;
        char op = '*';
        [decisions caculatorNum1:num1 operation:op number2:num2];
        
        /*
         *OC 第七章 类         *
         */
        NSLog(@"***********第<%d>章**************\n\n",chapter++);
        Chapter07_Class *class = [[Chapter07_Class alloc] init];
        [class chapter07_01];
        [class chapter07_02];
        [class chapter07_03];
        [class chapter07_04];
        
        
        /*
         *OC 第八章 继承        *
         */
        NSLog(@"***********第<%d>章**************\n\n",chapter++);
        Chapter08_Inheritance *inheritance = [[Chapter08_Inheritance alloc] init];
        [inheritance chapter08_01];
        [inheritance chapter08_02];
        [inheritance chapter08_03];
        
        /*
         *OC 第九章 多态、动态类型和动态绑定        *
         */
        NSLog(@"***********第<%d>章**************\n\n",chapter++);
        Chapter09_Ploymorphism *plo = [[Chapter09_Ploymorphism alloc] init];
        [plo chapter09_01];
        [plo chapter09_02];
        [plo chapter09_03];
        [plo chapter09_04];
        /*
         *OC 第十章 变量和数据类型       *
         */
//        NSLog(@"***********第<%d>章**************\n\n",chapter++);
//        Chapter10_DataTypes *dataTypes10 = [[Chapter10_DataTypes alloc] init];
//        [dataTypes10 chapter10_03];
        
        /*
         *OC 第十一章 分类和协议      *
         */
        NSLog(@"***********第<%d>章**************\n\n",chapter++);
        Chapter11_category *category = [[Chapter11_category alloc] init];
        [category chapter11_01];
        [category chapter11_02];
        
        /*
         *OC 第十二章 预处理程序      *
         */
        NSLog(@"***********第<%d>章**************\n\n",chapter++);
        Chapter12_Proprocess *p = [[Chapter12_Proprocess alloc] init];
        [p chapter12_01];
        [p chapter12_02];
        /*
         *OC 第十五章 数字、字符串和集合      *
         */
        NSLog(@"***********第<%d>章**************\n\n",chapter++);
        Chapter15_Num_Str_Collections *nsc = [[Chapter15_Num_Str_Collections alloc] init];
        [nsc chapter15_01];
        [nsc chapter15_02];
        [nsc chapter15_03];
        [nsc chapter15_04];
        [nsc chapter15_05];
        [nsc chapter15_06];
        [nsc chapter15_07];
        [nsc chapter15_08];
        [nsc chapter15_09];
        [nsc chapter15_10];

        
    }
    
    
    return 0;
}


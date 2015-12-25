//
//  main.m
//  OCLesson04
//
//  Created by Nick Deng on 15/12/20.
//  Copyright © 2015 NickDeng. All rights reserved.
//  主要学习类文件拆分，传递多个参数的方法如何设置，以及self关键字的食用和返回一个对象
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Fraction *aFraction = [[Fraction alloc]init];
        Fraction *bFraction = [[Fraction alloc]init];
        [aFraction setNumerator:10 andDenominator:30];
        [bFraction setNumerator:30 andDenominator:30];
        [[aFraction add:bFraction] print];
        //[aFraction reduction];
        //[aFraction print];
        //printf("Convert to number is %f\n",[myFraction convertToNum]);
        
    }
    return 0;
}

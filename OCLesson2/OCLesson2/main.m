//
//  main.m
//  OCLesson2
//
//  Created by Nick Deng on 15/12/15.
//  Copyright © 2015年 NickDeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

-(void) setAccumulator : (double) value;
-(void) clear;
-(double) accumulator;

//算数方法
-(void) add: (double)       value;
-(void) subtract:(double)   value;
-(void) multiply:(double)   value;
-(void) divide:(double)     value;

@end

@implementation Calculator
{
    double accumulator;
}

-(void) setAccumulator:(double)value
{
    accumulator = value;
}

-(void) clear
{
    accumulator = 0;
}

-(double) accumulator
{
    return accumulator;
}

-(void) add: (double) value
{
    accumulator += value;
}
-(void) multiply:(double)value
{
    accumulator *= value;
}
-(void) subtract:(double)value
{
    accumulator -= value;
}
-(void) divide:(double)value
{
    if (value == 0) {
        NSLog(@"零不能做除数");
        return ;
    }
    accumulator /= value;
}
@end



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Calculator *deskCalc = [[Calculator alloc] init];
        
        [deskCalc setAccumulator:100.0];
        [deskCalc add:200];
        [deskCalc subtract:10.0];
        [deskCalc multiply:5];
    
        NSLog(@"The result is %g",[deskCalc accumulator]);
        
        //NSLog(@"Hello, World!");
    }
    return 0;
}

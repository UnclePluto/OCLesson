//
//  main.m
//  OCLesson07
//
//  Created by Nick Deng on 15/12/22.
//  Copyright © 2015年 NickDeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Complex.h"
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Complex *c1 = [[Complex alloc]init];
        Complex *c2 = [[Complex alloc]init];
        //Complex *comResult = [[Complex alloc]init];
        
        Fraction *f1 = [[Fraction alloc]init];
        Fraction *f2 = [[Fraction alloc]init];
        //Fraction *fraResult = [[Fraction alloc]init];
        
        
        id result;
        
        [c1 setReal:18.0 andImaginary:2.5];
        [c2 setReal:-5.0 andImaginary:3.2];
        
        [f1 setNumerator:1 andDenominator:10];
        [f2 setNumerator:2 andDenominator:15];
        
        result = [c1 add:c2];
        
        
        @try {
            [result setNumerator:15 andDenominator:16];
        }
        @catch (NSException *exception) {
            NSLog(@"Caught %@%@",[exception name],[exception reason]);
        }
        
        NSLog(@"fuc");

        
        //result = c1;
        
        [result setReal:10.0 andImaginary:5];
        
        [c1 print];
        
        [result print];
     
        result = [f1 add:f2];
        
        //[result print];
        
        
        
    }
    return 0;
}

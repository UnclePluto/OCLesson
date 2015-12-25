//
//  main.m
//  OCPractice02
//
//  Created by Nick Deng on 15/12/16.
//  Copyright © 2015年 NickDeng. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface F2C : NSObject
-(double) FtoC : (double) value;

@end



@implementation F2C

-(double) FtoC : (double)value
{
    int C;
    
    C = (value - 32) /1.8;
    
    return C;
}


@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //F2C *f2c =[[F2C alloc]init];
        //double value ;
        
        char c,d;
        
        c = 'c';
        
        d = c;
        
        NSLog(@"d = %c",d);
        
        //value = [f2c FtoC:100];
        //insert code here...
        //NSLog(@"100华氏度等于%f",value);
    }
    return 0;
}

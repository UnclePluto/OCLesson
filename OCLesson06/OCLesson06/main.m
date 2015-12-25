//
//  main.m
//  OCLesson06
//
//  Created by Nick Deng on 15/12/22.
//  Copyright © 2015年 NickDeng. All rights reserved.
//
#import "Square.h"
#import "XYPoint.h"
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Square *mySquare = [[Square alloc]init];
        //Square *testSquare = [[Square alloc]init];
        
        if ([mySquare isMemberOfClass:[Square class]] == YES) {
            NSLog(@"ok1");
        }
        if ([mySquare isMemberOfClass:[Rectangle class]]) {
            NSLog(@"\n ok2");
        }
        
        
        if([mySquare respondsToSelector:@selector(setWidth:andHeight:)]){
            NSLog(@"\n ok3");
        }
        
        if ([mySquare respondsToSelector:@selector(setSide:)]) {
            NSLog(@"\n ok6");
        }
        
        if ([mySquare respondsToSelector:@selector(setWidth:andHeight:)]) {
            NSLog(@"\n ok7");
        }
        
        if ([Square instancesRespondToSelector:@selector(setSide:)]) {
            NSLog(@"\n ok4");
        }
        if ([Rectangle instancesRespondToSelector:@selector(setSide:)]) {
            NSLog(@"\n ok5");
        }
        return 0;
        
        
        
        
        
        
        
        
        
        
        
        
        
        Rectangle *myRectangle = [[Rectangle alloc] init];
//        XYPoint *myPoint = [[XYPoint alloc] init];
//        [myPoint setX:100 andY:200];
        [myRectangle setWidth:10 andHeight:5];
//        myRectangle.origin = myPoint;
        
        [myRectangle draw];
        
        return 0;
        
        //NSLog(@"Rectangle w = %i, h %i",myRectangle.width,myRectangle.height);
        
        //NSLog(@"\nOrigin at (%i, %i)",[[myRectangle origin] x],myRectangle.origin.y);
        
        //[myPoint setX:300 andY:400];
        
        //NSLog(@"\nOrigin at (%i, %i)",[[myRectangle origin] x],myRectangle.origin.y);
        
        //NSLog(@"\nArea = %i,Perimeter = %i",myRectangle.area,myRectangle.perimeter);
    }
    return 0;
}

//
//  main.m
//  OCLesson05
//
//  Created by Nick Deng on 15/12/21.
//  Copyright © 2015年 NickDeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClassA : NSObject
@property int x;
-(void) initVar;
@end

@interface ClassB : ClassA
-(void) print;
-(void) initVar;
@end

@implementation ClassA
@synthesize x;
-(void) initVar
{
    x=123;
}
@end

@implementation ClassB
-(void) print
{
    NSLog(@"%i",[self x]);
}
-(void) initVar
{
    self.x=321;
}
@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ClassB* B = [[ClassB alloc]init];
        [B initVar];
        [B print];
    }
    return 0;
}

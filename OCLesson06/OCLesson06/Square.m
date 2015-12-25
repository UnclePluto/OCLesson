//
//  Square.m
//  OCLesson06
//
//  Created by Nick Deng on 15/12/22.
//  Copyright © 2015年 NickDeng. All rights reserved.
//

#import "Square.h"

@implementation Square
-(void) setSide:(int) s
{
    //[self setWidth:s andHeight:s];
    self.width = s;
    self.height = s;
}
-(int) side
{
    return self.width;
}
@end

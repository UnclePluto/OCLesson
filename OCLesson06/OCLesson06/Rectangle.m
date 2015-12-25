//
//  Rectangle.m
//  OCLesson06
//
//  Created by Nick Deng on 15/12/22.
//  Copyright © 2015年 NickDeng. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

{
    XYPoint *origin;
}

@synthesize width,height;

-(void) setWidth:(int)w andHeight:(int) h
{
    width = w;
    height = h;
}

-(int) perimeter
{
    return (width + height) * 2;
}

-(int) area
{
    return width * height;
}

-(void)setOrigin:(XYPoint *)pt
{
     if(!origin)
         origin = [[XYPoint alloc] init];
    //origin = pt;
    origin.x = pt.x;
    origin.y = pt.y;
}

-(XYPoint *)origin
{
    return origin;
}

-(void) draw
{
    for (int i = 0; i<width; i++) {
        printf("-");
    }
    printf("\n");
    for (int i = 0; i<height; i++) {
        printf("|");
        for (int i = 0; i<width-2; i++) {
            printf(" ");
        }
        printf("|\n");
    }
    for (int i = 0; i<width; i++) {
        printf("-");
    }
    
    printf("\n");
}
@end

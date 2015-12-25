//
//  Rectangle.h
//  OCLesson06
//
//  Created by Nick Deng on 15/12/22.
//  Copyright © 2015年 NickDeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "XYPoint.h"

@interface Rectangle : NSObject
@property int width,height;

-(XYPoint *) origin;
-(int) area;
-(int) perimeter;
-(void) setWidth:(int)w andHeight:(int) h;
-(void) setOrigin :(XYPoint*) pt;

-(void) draw;


@end

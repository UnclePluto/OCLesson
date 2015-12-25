//
//  Complex.h
//  OCLesson07
//
//  Created by Nick Deng on 15/12/22.
//  Copyright © 2015年 NickDeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject
@property double real , imaginary;

-(void) print;
-(void)setReal:(double) a andImaginary:(double) b;
-(Complex *) add: (Complex *) f;
@end

//
//  Fraction.h
//  OCLesson04
//
//  Created by Nick Deng on 15/12/20.
//  Copyright © 2015 NickDeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property int numerator,denominator;

-(void)     print;
-(void)     setNumerator: (int) n andDenominator: (int) d;
-(void)     reduction;

//-(void)     add: (Fraction *) f;
-(Fraction *) add:(Fraction *) f;
-(double)   convertToNum;

@end

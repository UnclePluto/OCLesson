//
//  Fraction.m
//  OCLesson04
//
//  Created by Nick Deng on 15/12/20.
//  Copyright © 2015 NickDeng. All rights reserved./Users/ios-test/developer/OC/OCLesson/OCLesson04/OCLesson04/Fraction.h
//

#import "Fraction.h"

@implementation Fraction

@synthesize denominator,numerator;

-(void) print
{
    [self reduction];
    if (numerator == 0) {
        NSLog(@"0");
    }else if(denominator == 1)
        NSLog(@"%i",numerator);
    else
    NSLog(@"%i/%i",numerator,denominator);
}

-(void)setNumerator:(int)n andDenominator: (int)d
{
    numerator = n;
    denominator = d;
}

-(void) reduction
{
    int temp,d,n;
    d = denominator;
    n = numerator;
    while ( n!=0) {
        temp = d%n;
        d = n;
        n = temp;
    }
    denominator = denominator / d;
    numerator = numerator / d;
}

-(Fraction *) add:(Fraction *)f
{
    Fraction* result = [[Fraction alloc]init];
    result.numerator = numerator * f.denominator + denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    return result;
}


//-(void) SetNumerator
//{
//    int n;
//    printf("请输入分子:");
//    scanf("%i",&n);
//    numerator = n;
//}
//-(void) SetDenominator
//{
//    int d;
//    printf("请输入分母:");
//    scanf("%i",&d);
//    while (d == 0) {
//        printf("分母不能为0请重新输入:");
//        scanf("%i",&d);
//    }
//    denominator = d;
//}
//-(int) numerator
//{
//    return numerator;
//}
//-(int) denominator
//{
//    return denominator;
//}

-(double) convertToNum
{
    return (double)numerator/denominator;
}
@end

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(int) getNumerator;
-(int) getDenominator;

@end


@implementation Fraction

{
    int numerator;
    int denominator;
}

-(int) getNumerator{
    return numerator;
}
-(int) getDenominator{
    return denominator;
}

-(void) print{
    NSLog(@"%i/%i",numerator,denominator);
}
-(void) setNumerator:(int)n{
    numerator = n;
}
-(void) setDenominator:(int)d{
    denominator = d;
}
@end

int main (int argc, char * argv[]){
    @autoreleasepool {
        Fraction *myFraction;
        
        myFraction = [Fraction alloc];
        myFraction = [myFraction init];
        
        [myFraction setNumerator:1];
        [myFraction setDenominator:3];
        
        Fraction *myFraction2 = [[Fraction alloc] init];
        
        Fraction *myFraction3 = [Fraction new];
        
        
        
        NSLog(@"The value of myFraction is:");
        
        [myFraction print];
        
        NSLog(@"\n--------------------------------\n");
        
        [myFraction2 setNumerator:2];
        [myFraction2 setDenominator:3];
        
        NSLog(@"The value of myFraction2 is:");
        [myFraction2 print];
        
        int alphaBetaRoutine=1;
        
        alphaBetaRoutine += 0;
        
        
        
        NSLog(@"\n------------------------------"
              @"----------------------------------\n");//这里可以看出oc字符串链接貌似不需要计算符？
        
        [myFraction3 setNumerator:5];
        [myFraction3 setDenominator:11];
        
        NSLog(@"The value of myFraction2 is:");
        [myFraction3 print];
        
        NSLog(@"Just test the getfunction:\na:%i\nb:%i",[myFraction getNumerator],[myFraction getDenominator]);
                      
                      
    }
    return 0;
}
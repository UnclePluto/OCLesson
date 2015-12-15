//
//  main.m
//  OCPractice01
//  一个关于开车的东西，主要练习类的声明与调用
//  Created by Nick Deng on 15/11/19.
//  Copyright © 2015 NickDeng. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Car : NSObject

-(void)stateOfCar;
-(void)getInCar:(NSString*)name;
-(void)getGasforCar:(int)g;
-(void)driveCar;
-(void)washCar;
-(void)getOutCar;

@end

@implementation Car
{
    int gas;
    int dirver;
    int dirty;
    NSString* dirverName;  //OC的NSString类型应该必须使用指针才行；
}

-(void)getInCar: (NSString*)name{
    if (dirver == 0) {
        dirver++;
        dirverName = name;
    }
    else{
        NSLog(@"There has been a dirver in the Car,his name is %@\n",dirverName);
    }
}

-(void)getGasforCar:(int)g{
    gas += g;
    NSLog(@"The gass is added\n");
}

-(void)driveCar{
    if (dirver == 0) {
        NSLog(@"No man in the car!\n");
    }
    else if (gas< 10) {
        NSLog(@"Please add gas!%@\n",dirverName);
    }
    else{
        gas -= 10;
        dirty++;
        NSLog(@"GO!GO!GO\n");
    }
}

-(void)washCar{
    dirty = 0;
    NSLog(@"Nice car!\n");
}
-(void)getOutCar{
    dirver = 0;
    NSLog(@"BYE!BYE!BYE");
}
-(void)stateOfCar{
    NSLog(@"dirver:%i\ndirverName:%@\ndirty:%i\ngas:%i\n",dirver,dirverName,dirty,gas);
}

@end



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *name = @"Nick";
        Car *myCar = [Car new];  //注意指针，之前忘记了。
        [myCar getInCar:name];
        [myCar getGasforCar:15];
        [myCar driveCar];
        [myCar washCar];
        [myCar getOutCar];
        [myCar stateOfCar];
    }
    return 0;
}

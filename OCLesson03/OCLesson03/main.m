//
//  main.m
//  OCLesson03
//
//  Created by Nick Deng on 15/12/17.
//  Copyright © 2015年 NickDeng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int num1,num2;
        
        printf("please input a num:");
        scanf("%i",&num1);
        printf("please input a num:");
        scanf("%i",&num2);
        
        if(num1%num2 == 0)
            printf("第一个数可以被第二个数整除");
        else
            printf("第一个数不能被第二个数整除") ;
        
        return 0;
       
        for (int i = 2; i<num1; i++) {
            bool isPrime = true;
            for (int j = 2; j<i; j++) {
                if (i%j == 0) {
                    isPrime = false;
                }
            }
            if (isPrime) {
                printf("%i\n",i);
            }
        }
        
        
        return 0;
    }
}

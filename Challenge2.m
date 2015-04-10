//
//  Challenge2.m
//  Assignment6
//
//  Created by Yung Dai on 2015-04-10.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import <Foundation/Foundation.h>

int main2(int argc, const char * argv[]) {
    @autoreleasepool {

        int valueForN = 5;
        int triangularNumber;
        
        for (valueForN ; valueForN < 51; valueForN += 5) {
            triangularNumber = ((valueForN * (valueForN +1)) /2);
            NSLog(@"The Trangular Number is %i", triangularNumber);
        }
    return 0;
    }
}


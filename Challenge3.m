//
//  Challenge3.m
//  Assignment6
//
//  Created by Yung Dai on 2015-04-10.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int valueForN = 1;
        
        for (valueForN; valueForN <=10; valueForN++) {
            int startingNumber = 1, n = valueForN;
            while (n)
            startingNumber  *= n--;
            NSLog(@"The Factorial for %i is %i", valueForN, startingNumber);
            }
    }
    return 0;
}


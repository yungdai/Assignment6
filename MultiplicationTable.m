//
//  MultiplicationTable.m
//  Assignment6
//
//  Created by Yung Dai on 2015-04-10.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import "MultiplicationTable.h"

@implementation MultiplicationTable

- (void) createTable:(NSInteger)startingNumber {
    


    if (startingNumber > 0 && startingNumber < 11){
        
        
        NSLog(@"______________________");
        NSLog(@"|    N    |    N2    |");
        for (startingNumber; startingNumber < 11; startingNumber++) {
            NSLog(@"|   %ld     |    %ld    |", (long)startingNumber, (long)startingNumber * 2);
        }
        NSLog(@"______________________");
        

        
        
    } else if (startingNumber > 10) {
                NSLog(@"The value %ld is greater than 10 replease call the object again with a number between 1 - 10", (long)startingNumber);

    } else {

                NSLog(@"Please choose a number between 1 - 10");
    }

}

@end

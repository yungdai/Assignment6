//
//  Car2.h
//  Assignment6
//
//  Created by Yung Dai on 2015-04-10.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car2 : NSObject

//// settings custome getter/setter names
//@property (getter=isRunning) BOOL running;

// Making the property readonly
@property (getter=isRunning, readonly) BOOL running;

- (void)startEngine;
- (void)stopEngine;

@end

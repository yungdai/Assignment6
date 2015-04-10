//
//  Car2.h
//  Assignment6
//
//  Created by Yung Dai on 2015-04-10.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Car2 : NSObject

//// settings custome getter/setter names
//@property (getter=isRunning) BOOL running;

// Making the property readonly
// @property (getter=isRunning, readonly) BOOL running;

// working with the copy attribute
@property (nonatomic, copy  ) NSString *model;
@property (nonatomic, strong) Person *driver;


@end

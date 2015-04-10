//
//  Car.m
//  Assignment5
//
//  Created by Yung Dai on 2015-04-09.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import "Car.h"

static NSString* _defaultModel;

@implementation Car {
    double _odometer;
    
}
// optional

//@synthesize model = _model;

-(void)drive {
    NSLog(@"Driving a %@. Vrooooom!", self.model);
}

+(void)setDefaultModel:(NSString *)aModel {
    _defaultModel = [aModel copy];
}

-(id)initWithModel:(NSString *)aModel {
    self = [super init];
    if (self) {
        // Any Custom setup work goes here
        _model = [aModel copy];
        _odometer = 0;
    }
    return self;
}

- (id)init {
    // Forward to the "designated" initalization method
    return [self initWithModel:_defaultModel];
}

+(void)initialize {
    if (self == [Car class]) {
        // Makes sure this isn't excuted more than once
        
        _defaultModel = @"Nissan Versa";
    }
}

@end

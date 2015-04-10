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

// Selectors method code
- (void)startEngine {
    NSLog(@"Starting the %@'s engine", _model);
}

- (void)driveForDistance:(NSNumber *)theDistance {
    NSLog(@"The %@ just drove %0.1f miles", _model, [theDistance doubleValue]);
}
          
- (void)turnByAngle:(NSNumber *)theAngle quickly:(NSNumber *)useParkingBrake {
    if ([useParkingBrake boolValue]) {
        NSLog(@"The %@ is drifting around the corner!", _model);
    } else {
        NSLog(@"The %@ is making a gentle %0.1f degree turn", _model, [theAngle doubleValue]);
    }
}

@end

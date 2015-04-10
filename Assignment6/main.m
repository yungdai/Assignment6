//
//  main.m
//  Assignment6
//
//  Created by Yung Dai on 2015-04-10.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car2.h"
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *john = [[Person alloc]init];
        john.name = @"John";
        
        Car2 *honda = [[Car2 alloc] init];
        honda.model = @"Honda Civic";
        honda.driver = john;
        john.car = honda;
        
                NSLog(@"%@ is driving the %@", honda.driver, honda.model);
        
        // No longer able to run because it's a static property now
        //honda.running = YES;                // [honda setRunning:YES]
        
        
        // NSLog(@"%d", honda.running);        // [honda isrunning]
    }
    return 0;
}

//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        // Lesson 6
//        Car *toyota = [[Car alloc]init];
//        
//        [toyota setModel: @"Toyota Corolla"];
//        NSLog(@"Created a %@", [toyota model]);
//        
//        toyota.model = @"Toyota Camry";
//        NSLog(@"Changed the car to a %@", toyota.model);
//        
//        
//        // Instantiating objects
//        Car *nissan = [[Car alloc] init];
//        NSLog(@"Created a %@", [nissan model]);
//        
//        Car *chevy = [[Car alloc] initWithModel:@"Chevy Corvette"];
//        NSLog(@"Created a %@, too.", chevy.model);
//        
//        
//        [toyota drive];
//        
//        Car *delorean = [[Car alloc]initWithModel:@"DeLorean"];
//        
//        // Get the class of an object
//        NSLog(@"%@ is an instance of the %@ class", [delorean model], [delorean class]);
//        
//        // check an object against a class and all subclasses
//        
//        if ([delorean isKindOfClass:[NSObject class]]) {
//            NSLog(@"%@ is an instance of NSObject or one of it's subclasses", [delorean model]);
//            
//        } else {
//            NSLog(@"%@ is not an instance of NSObject or one of it's subclasses", [delorean model]);
//        }
//        
//        // Check an object against a class, but not it's subclasses
//        if ([delorean isMemberOfClass:[NSObject class]]) {
//            NSLog(@"%@ is an instanance of NSObject", [delorean model]);
//        } else {
//            NSLog(@"%@ is not an instance of NSObject", [delorean model]);
//        }
//        
//        // Convert between strings and classes
//        if(NSClassFromString(@"Car") == [Car class]) {
//            NSLog(@"I can convert between strings and classes!");
//            
//        }
//
//        // End of Lesson 5 begining of Lesson 6
//        
////        // Calling Methods
////        Car *porsche = [[Car alloc]init];
////        [porsche initWithModel:@"Porsche"];
////        [porsche initWithModel:@"Porsche" mileage:42000.0];
////        [porsche driveFromOrigin:@"Home" toDestination:@"Airport"];
////        // Selectors
////        porsche.model = @"Porsche 911 Carrera";
////        SEL stepOne = NSSelectorFromString(@"startEnding");
////        SEL stepTwo = @selector(driveForDistance:);
////        SEL stepThree = @selector(turnByAngle:quickly:);
////
////        // This is the same as:
////        // [porsche startEngine];
////        [porsche performSelector:stepOne];
////        
////        // This is the same as:
////        // [porsche driveForDistance:[NSNumber numberWithDouble:5.7]];
////        [porsche performSelector:stepTwo
////                      withObject:[NSNumber numberWithDouble:5.7]];
////        
////        if ([porsche respondsToSelector:stepThree]) {
////            // This is the same as:
////            // [porsche turnByAngle:[NSNumber numberWithDouble:90.0]
////            //              quickly:[NSNumber numberWithBool:YES]];
////            [porsche performSelector:stepThree
////                          withObject:[NSNumber numberWithDouble:90.0]
////                          withObject:[NSNumber numberWithBool:YES]];
//        
//        }
//        NSLog(@"Step one: %@", NSStringFromSelector(stepOne));
//
//    }
//    return 0;
//}

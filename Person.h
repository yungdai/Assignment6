//
//  Person.h
//  Assignment6
//
//  Created by Yung Dai on 2015-04-10.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import <Foundation/Foundation.h>

// The @class Car line is a forward declaration of the Car class. It’s like telling the compiler, “Trust me, the Car class exists, so don’t try to find it right now.” We have to do this instead of our usual #import statement because Car also imports Person.h, and we would have an endless loop of imports.
@class Car2;

@interface Person : NSObject

@property (nonatomic) NSString *name;
// New property inherited from the Car class
@property (nonatomic, weak) Car2 *car;

//A weak reference from the Person class to Car A common use case for the weak attribute is parent-child data structures. By convention, the parent object should maintain a strong reference with it’s children, and the children should store a weak reference back to the parent. Weak references are also an inherent part of the delegate design pattern. The point to take away is that two objects should never have strong references to each other. The weak attribute makes it possible to maintain a cyclical relationship without creating a retain cycle.



@end

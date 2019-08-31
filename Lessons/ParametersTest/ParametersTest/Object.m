//
//  Object.m
//  ParametersTest
//
//  Created by Nikita Shumilin on 17/07/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "Object.h"

@implementation Object

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"object is created");
    }
    return self;
}

- (void) dealloc {
    NSLog(@"object is deallocated");
}

- (id)copyWithZone:(nullable NSZone *)zone {
    Object *newObject =  [[Object alloc] init];
    newObject.name = [self.name copy];
    return newObject;
}

@end

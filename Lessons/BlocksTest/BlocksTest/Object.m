//
//  Object.m
//  BlocksTest
//
//  Created by Nikita Shumilin on 18/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "Object.h"

@interface Object ()

@property (copy, nonatomic) ObjectBlock objectBlock;

@end

@implementation Object

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        __weak Object *weakSelf = self;
        
        self.objectBlock = ^{
            NSLog(@"%@", weakSelf.name);
        };
    }
    return self;
}

- (void) testMethod:(ObjectBlock) block {
    block();
}

- (void) dealloc {
    NSLog(@"Object is deallocated");
}

@end

//
//  Boxer.m
//  PropertiesTest
//
//  Created by Nikita Shumilin on 16/07/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "Boxer.h"

@interface Boxer ()
@property (assign, nonatomic) NSInteger nameCount;
@end


@implementation Boxer
@synthesize name = _name;

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.nameCount = 0;
        self.name = @"Default";
        self.age = 1;
        self.height = 0.52f;
        self.weight = 5.f;
    }
    return self;
}

- (void) setName:(NSString *)name {
    NSLog(@"setter setName is called");
    _name = name;
}

- (NSString*) name {
    self.nameCount += 1;
    
    NSLog(@"name getter is called %ld times", self.nameCount);
    
    return _name;
//    return @"Hack!";
}

- (NSInteger) age {
    NSLog(@"age getter is called");
    
    return _age;
}

- (NSInteger) howOldAreYou {
    return self.age;
}

@end

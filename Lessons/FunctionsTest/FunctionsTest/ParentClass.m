//
//  ParentClass.m
//  FunctionsTest
//
//  Created by Nikita Shumilin on 14/07/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "ParentClass.h"

@implementation ParentClass

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Instacne of parent class is initialized");
    }
    return self;
}

+ (void) whoAreYou {
    NSLog(@"I AM ParentClass, %@", self);
}

- (void) sayHello {
    NSLog(@"Hello, %@!", self);
}

- (void) say:(NSString*) string {
    NSLog(@"%@", string);
}

- (void) say:(NSString*) string and:(NSString*) string2 {
    NSLog(@"%@, %@", string, string2);
}

- (void) say:(NSString*) string and:(NSString*) string2 andAfterThat: (NSString*) string3 {
    NSLog(@"%@, %@, %@", string, string2, string3);
}

- (NSString*) saySomeNumberString {
    return [NSString stringWithFormat:@"%@", [NSDate date]];
}

- (NSString*) saySomething {
    NSString* string = [self saySomeNumberString];
    
    return string;
}

@end

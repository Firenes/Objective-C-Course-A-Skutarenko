//
//  ChildClass.m
//  FunctionsTest
//
//  Created by Nikita Shumilin on 16/07/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "ChildClass.h"

@implementation ChildClass

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Instance of child class is initialized");
    }
    return self;
}

//- (NSString*) saySomeNumberString {
////    return [NSString stringWithFormat:@"%@", [NSDate date]];
//    return @"Something!";
//}
//
//- (NSString*) saySomething {
////    return [self saySomeNumberString];
//    return [super saySomeNumberString];
//}

@end

//
//  Doctor.m
//  NotificationsTest
//
//  Created by Nikita Shumilin on 14/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

#pragma mark - Initialization

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
        
        [nc addObserver:self
               selector:@selector(salaryChangedNotification:)
                   name:GovernmentSalaryDidChangeNotification
                 object:nil];
        
        [nc addObserver:self
               selector:@selector(averagePriceChangedNotification:)
                   name:GovernmentAveragePriceDidChangeNotification
                 object:nil];
    }
    return self;
}

#pragma mark - Notifications

- (void) salaryChangedNotification:(NSNotification *)notification {
    
    NSNumber* value = [notification.userInfo objectForKey:GovernmentSalaryUserInfoKey];
    
    CGFloat salary = [value floatValue];
    
    if (salary < _salary) {
        NSLog(@"Doctors are NOT happy!");
    } else {
        NSLog(@"Doctors are happy!");
    }
    
    _salary = salary;
    
//    NSLog(@"salaryChangedNotification userInfo = %@", notification.userInfo);
}

- (void) averagePriceChangedNotification:(NSNotification *)notification {
//    NSLog(@"averagePriceChangedNotification userInfo = %@", notification.userInfo);
}

#pragma mark - Deallocate Notifications

- (void) dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end

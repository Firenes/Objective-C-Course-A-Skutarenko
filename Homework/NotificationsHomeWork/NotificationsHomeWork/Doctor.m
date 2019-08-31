//
//  Doctor.m
//  NotificationsHomeWork
//
//  Created by Nikita Shumilin on 15/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "Doctor.h"
#include "AppDelegate.h"

@implementation Doctor

#pragma mark - Initialization

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
        
        [nc addObserver:self
               selector:@selector(salaryChangedNotification:)
                   name:GovernmentSalaryDidChangedNotification
                 object:nil];
        
        [nc addObserver:self
               selector:@selector(averagePriceChangedNotification:)
                   name:GovernmentAveragePriceDidChangedNotification
                 object:nil];
        
        [nc addObserver:self
               selector:@selector(inflationChangedNotification:)
                   name:GovernmentInflationDidChangedNotification
                 object:nil];
        
        [nc addObserver:self
               selector:@selector(applicationDidEnterBackgroundChangedNotification:)
                   name:UIApplicationDidEnterBackgroundNotification
                 object:nil];
        
        [nc addObserver:self
               selector:@selector(applicationWillEnterForegroundChangedNotification:)
                   name:UIApplicationWillEnterForegroundNotification
                 object:nil];
    }
    return self;
}

#pragma mark - Notifications

- (void) salaryChangedNotification:(NSNotification *)notification {
    
    // find out new salary
    // create new Dictionary (by userInfo) and take out key of salary from dictionary
    NSNumber *value = [notification.userInfo objectForKey:GovernmentSalaryUserInfoKey];
    
    CGFloat salary = [value floatValue];
    
    if (salary > _salary) {
        NSLog(@"Doctor is NOT happy! Salary decreased from %.2f to %.2f!", _salary, salary);
    } else if (salary == _salary) {
        NSLog(@"Keep working");
    } else {
        NSLog(@"Doctor is happy! Salary increased from %.2f to %.2f!", _salary, salary);
    }
    
    // change salary when government change it
    _salary = salary;
}

- (void) averagePriceChangedNotification:(NSNotification *)notification {
    
    NSNumber *value = [notification.userInfo objectForKey:GovernmentAveragePriceUserInfoKey];
    
    CGFloat averagePrice = [value floatValue];

    if (averagePrice > _averagePrice) {
        NSLog(@"Doctor: Oh, no! The Governmnet increase prices from %.2f to %.2f!", _averagePrice, averagePrice);
    } else if (averagePrice == _averagePrice) {
        NSLog(@"Doctor: Stable price");
    } else {
        NSLog(@"Doctor: Yeah! The Government cut prices from %.2f to %.2f!", _averagePrice, averagePrice);
    }
    
    _averagePrice = averagePrice;
}

- (void) inflationChangedNotification:(NSNotification *)notification {
    NSNumber *value = [notification.userInfo objectForKey:GovernmentInflationUserInfoKey];
    CGFloat inflation = [value floatValue];
    
    CGFloat inflationEffect = inflation - _inflation;
    
    NSLog(@"Inflation increased by %.2f%%. Doctor's salary has decreased to %.2f", inflationEffect, _salary - (_salary * inflationEffect / 100));

    if (inflationEffect > 0 && inflationEffect <= 10) {
        NSLog(@"Doctor can't buy a beer at the evening.");
    } else if (inflationEffect > 10 && inflationEffect <= 20) {
        NSLog(@"Doctor can't buy a burger at lunch");
    } else if (inflationEffect > 20 && inflationEffect <= 30){
        NSLog(@"Doctor can't buy a cup of coffee at breakfast");
    } else {
        NSLog(@"Doctor can buy only Doshirak");
    }
}

- (void) applicationDidEnterBackgroundChangedNotification:(NSNotification *)notification {
    NSLog(@"Doctor goes to sleep");
}

- (void) applicationWillEnterForegroundChangedNotification:(NSNotification *)notification {
    NSLog(@"Doctor is back!");
}

#pragma mark - Deallocate Notification

- (void) dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end

//
//  Pensioner.m
//  NotificationsHomeWork
//
//  Created by Nikita Shumilin on 15/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "Pensioner.h"
#import "AppDelegate.h"

@implementation Pensioner

#pragma mark - Initialization

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
        
        [nc addObserver:self
               selector:@selector(pensionChangedNotification:)
                   name:GovernmentPensionDidChangedNotification
                 object:nil];
        
        [nc addObserver:self
               selector:@selector(averagePriceChangedNotification:)
                   name:GovernmentAveragePriceDidChangedNotification
                 object:nil];
        
        [nc addObserver:self
               selector:@selector(inflationChangeNotification:)
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

- (void) pensionChangedNotification:(NSNotification *)notification {
    NSNumber *value = [notification.userInfo objectForKey:GovernmentPensionUserInfoKey];
    
    CGFloat pension = [value floatValue];
    
    if (pension < _pension) {
        NSLog(@"Pensioners are NOT happy! Salary decreased from %.2f to %.2f!", _pension, pension);
    } else if (pension == _pension) {
        NSLog(@"Stability");
    } else {
        NSLog(@"Pensioners are happy! Salary increased from %.2f to %.2f!", _pension, pension);
    }
    
    _pension = pension;
}

- (void) averagePriceChangedNotification:(NSNotification *)notification {
    NSNumber * value = [notification.userInfo objectForKey:GovernmentAveragePriceUserInfoKey];
    
    CGFloat averagePrice = [value floatValue];
    
    if (averagePrice > _averagePrice) {
        NSLog(@"Pensioner: Oh, no! The Governmnet increase prices from %.2f to %.2f!", _averagePrice, averagePrice);
    } else if (averagePrice == _averagePrice) {
        NSLog(@"Pensioner: Stable price");
    } else {
        NSLog(@"Pensioner: Yeah! The Government cut prices from %.2f to %.2f!", _averagePrice, averagePrice);
    }
    
    _averagePrice = averagePrice;
}

- (void) inflationChangeNotification:(NSNotification *)notification {
    NSNumber *value = [notification.userInfo objectForKey:GovernmentInflationUserInfoKey];
    CGFloat inflation = [value floatValue];
    
    CGFloat inflationEffect = inflation - _inflation;
    
    NSLog(@"Inflation increased by %.2f%%. Pensioner's pension has decreased to %.2f", inflationEffect, _pension - (_pension * inflationEffect / 100));
    
    if (inflationEffect > 0 && inflationEffect <= 10) {
        NSLog(@"Pensioner can't buy a beer at the evening.");
    } else if (inflationEffect > 10 && inflationEffect <= 20) {
        NSLog(@"Pensioner can't buy a burger at lunch");
    } else if (inflationEffect > 20 && inflationEffect <= 30){
        NSLog(@"Pensioner can't buy a cup of coffee at breakfast");
    } else {
        NSLog(@"Pensioner can buy only Doshirak");
    }
}

- (void) applicationDidEnterBackgroundChangedNotification:(NSNotification *)notification {
    NSLog(@"Pensioner goes to sleep");
}

- (void) applicationWillEnterForegroundChangedNotification:(NSNotification *)notification {
    NSLog(@"Pensioner is back!");
}

#pragma mark - Deallocate Notification

- (void) dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end

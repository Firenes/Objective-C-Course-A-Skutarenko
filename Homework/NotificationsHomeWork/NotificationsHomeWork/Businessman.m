//
//  Businessman.m
//  NotificationsHomeWork
//
//  Created by Nikita Shumilin on 15/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "Businessman.h"
#import "AppDelegate.h"

@implementation Businessman

#pragma mark - Initialization

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
        
        [nc addObserver:self
               selector:@selector(taxLevelChangedNotification:)
                   name:GovernmentTaxLevelDidChangedNotfication
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

- (void) taxLevelChangedNotification:(NSNotification *)notification {
    NSNumber *value = [notification.userInfo objectForKey:GovernmentTaxLevelUserInfoKey];
    
    CGFloat taxLevel = [value floatValue];
    
    if (taxLevel > _taxLevel) {
        NSLog(@"Businessmen are NOT happy! Tax level decreased from %.2f to %.2f!", _taxLevel, taxLevel);
    } else if (taxLevel == _taxLevel) {
        NSLog(@"Keep working");
    } else {
        NSLog(@"Businessmen are happy! Tax level increased from %.2f to %.2f!", _taxLevel, taxLevel);
    }
    
    _taxLevel = taxLevel;
}

- (void) averagePriceChangedNotification:(NSNotification *)notification {
    
    NSNumber *value = [notification.userInfo objectForKey:GovernmentAveragePriceUserInfoKey];
    
    CGFloat averagePrice = [value floatValue];
    
    if (averagePrice > _averagePrice) {
        NSLog(@"Businessman: Oh, no! The Governmnet increase prices from %.2f to %.2f!", _averagePrice, averagePrice);
    } else if (averagePrice == _averagePrice) {
        NSLog(@"Businessman: Stable price");
    } else {
        NSLog(@"Businessman: Yeah! The Government cut prices from %.2f to %.2f!", _averagePrice, averagePrice);
    }
    
    _averagePrice = averagePrice;
}

- (void) inflationChangedNotification:(NSNotification *)notification {
    NSNumber *value = [notification.userInfo objectForKey:GovernmentInflationUserInfoKey];
    CGFloat inflation = [value floatValue];
    
    CGFloat inflationEffect = inflation - _inflation;
    
    NSLog(@"Inflation increased by %.2f%%. Businessman's tax level has decreased to %.2f", inflationEffect, _taxLevel - (_taxLevel * inflationEffect / 100));
    
    if (inflationEffect > 0 && inflationEffect <= 10) {
        NSLog(@"Businessman can't buy a beer at the evening.");
    } else if (inflationEffect > 10 && inflationEffect <= 20) {
        NSLog(@"Businessman can't buy a burger at lunch");
    } else if (inflationEffect > 20 && inflationEffect <= 30){
        NSLog(@"Businessman can't buy a cup of coffee at breakfast");
    } else {
        NSLog(@"Businessman can buy only Doshirak");
    }
}

- (void) applicationDidEnterBackgroundChangedNotification:(NSNotification *)notification {
    NSLog(@"Businessman goes to sleep");
}

- (void) applicationWillEnterForegroundChangedNotification:(NSNotification *)notification {
    NSLog(@"Businessman is back!");
}

#pragma mark - Deallocate Notification

- (void) dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end

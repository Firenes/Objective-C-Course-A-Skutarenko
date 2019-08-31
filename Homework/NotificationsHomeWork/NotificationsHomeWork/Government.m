//
//  Government.m
//  NotificationsHomeWork
//
//  Created by Nikita Shumilin on 15/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "Government.h"
#import "AppDelegate.h"

NSString *const GovernmentTaxLevelDidChangedNotfication = @"GovernmentTaxLevelDidChangedNotfication";
NSString *const GovernmentSalaryDidChangedNotification = @"GovernmentSalaryDidChangedNotification";
NSString *const GovernmentPensionDidChangedNotification = @"GovernmentPensionDidChangedNotification";
NSString *const GovernmentAveragePriceDidChangedNotification = @"GovernmentAveragePriceDidChangedNotification";
NSString *const GovernmentInflationDidChangedNotification = @"GovernmentInflationDidChangedNotification";

NSString *const GovernmentTaxLevelUserInfoKey = @"GovernmentTaxLevelUserInfoKey";
NSString *const GovernmentSalaryUserInfoKey = @"GovernmentSalaryUserInfoKey";
NSString *const GovernmentPensionUserInfoKey = @"GovernmentPensionUserInfoKey";
NSString *const GovernmentAveragePriceUserInfoKey = @"GovernmentAveragePriceUserInfoKey";
NSString *const GovernmentInflationUserInfoKey = @"GovernmentInflationUserInfoKey";

@implementation Government

#pragma mark - Initializations

- (instancetype)init
{
    self = [super init];
    if (self) {
        _taxLevel = 5.f;
        _salary = 1000.f;
        _pension = 500.f;
        _averagePrice = 10.f;
        _inflation = 0.f;
        
        NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
        
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

#pragma mark - Setters with Notifications

- (void) setTaxLevel:(CGFloat)taxLevel {
    _taxLevel = taxLevel;
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:taxLevel]
                                                           forKey:GovernmentTaxLevelUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:GovernmentTaxLevelDidChangedNotfication
                                                        object:nil
                                                      userInfo:dictionary];
}

- (void) setSalary:(CGFloat)salary {
    _salary = salary;
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:salary]
                                                           forKey:GovernmentSalaryUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:GovernmentSalaryDidChangedNotification
                                                        object:nil
                                                      userInfo:dictionary];
}

- (void) setPension:(CGFloat)pension {
    _pension = pension;
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:pension]
                                                           forKey:GovernmentPensionUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:GovernmentPensionDidChangedNotification
                                                        object:nil
                                                      userInfo:dictionary];
}

- (void) setAveragePrice:(CGFloat)averagePrice {
    _averagePrice = averagePrice;
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:averagePrice]
                                                           forKey:GovernmentAveragePriceUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:GovernmentAveragePriceDidChangedNotification
                                                        object:nil
                                                      userInfo:dictionary];
}

- (void) setInflation:(CGFloat)inflation {
    _inflation = inflation;
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:inflation]
                                                           forKey:GovernmentInflationUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:GovernmentInflationDidChangedNotification
                                                        object:nil
                                                      userInfo:dictionary];
}

- (void) applicationDidEnterBackgroundChangedNotification:(NSNotification *)notification {
    NSLog(@"Governmnet goes to sleep");
}

- (void) applicationWillEnterForegroundChangedNotification:(NSNotification *)notification {
    NSLog(@"Government is back!");
}

@end

//
//  Government.h
//  NotificationsHomeWork
//
//  Created by Nikita Shumilin on 15/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

NS_ASSUME_NONNULL_BEGIN

extern NSString *const GovernmentTaxLevelDidChangedNotfication;
extern NSString *const GovernmentSalaryDidChangedNotification;
extern NSString *const GovernmentPensionDidChangedNotification;
extern NSString *const GovernmentAveragePriceDidChangedNotification;
extern NSString *const GovernmentInflationDidChangedNotification;

extern NSString *const GovernmentTaxLevelUserInfoKey;
extern NSString *const GovernmentSalaryUserInfoKey;
extern NSString *const GovernmentPensionUserInfoKey;
extern NSString *const GovernmentAveragePriceUserInfoKey;
extern NSString *const GovernmentInflationUserInfoKey;

@interface Government : NSObject

@property (assign, nonatomic) CGFloat taxLevel;
@property (assign, nonatomic) CGFloat salary;
@property (assign, nonatomic) CGFloat pension;
@property (assign, nonatomic) CGFloat averagePrice;
@property (assign, nonatomic) CGFloat inflation;

@end

NS_ASSUME_NONNULL_END

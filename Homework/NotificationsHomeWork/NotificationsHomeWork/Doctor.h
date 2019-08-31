//
//  Doctor.h
//  NotificationsHomeWork
//
//  Created by Nikita Shumilin on 15/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Government.h"

NS_ASSUME_NONNULL_BEGIN

@interface Doctor : NSObject

@property (assign, nonatomic) CGFloat salary;
@property (assign, nonatomic) CGFloat averagePrice;
@property (assign, nonatomic) CGFloat inflation;

@end

NS_ASSUME_NONNULL_END

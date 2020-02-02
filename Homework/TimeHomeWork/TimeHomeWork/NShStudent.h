//
//  NShStudent.h
//  TimeHomeWork
//
//  Created by Nikita Shumilin on 19.01.2020.
//  Copyright © 2020 Nikita Shumilin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NShStudent : NSObject

@property (strong, nonatomic) NSString *firstName;
@property (strong, nonatomic) NSString *secondName;
@property (assign, nonatomic) NSInteger number;
@property (strong, nonatomic) NSDate *dateOfBirth;
@property (assign, nonatomic) NSInteger age;

- (NSString *) dateToString: (NSDate *) birthDate;

@end

NS_ASSUME_NONNULL_END

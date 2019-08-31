//
//  Doctor.h
//  DelegatesHomeWork
//
//  Created by Nikita Shumilin on 11/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

NS_ASSUME_NONNULL_BEGIN

@interface Doctor : NSObject <PatientDelegate>

@property (assign, nonatomic) NSInteger countHead;
@property (assign, nonatomic) NSInteger countHands;
@property (assign, nonatomic) NSInteger countStomach;
@property (assign, nonatomic) NSInteger countAss;
@property (assign, nonatomic) NSInteger countLegs;

- (void) report;

@end

NS_ASSUME_NONNULL_END

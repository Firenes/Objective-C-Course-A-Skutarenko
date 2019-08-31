//
//  Doctor.h
//  DelegatesHomeWork2
//
//  Created by Nikita Shumilin on 12/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

NS_ASSUME_NONNULL_BEGIN

@protocol PatientDelegate;

@interface Doctor : NSObject <PatientDelegate>

@property (strong, nonatomic) NSString *name;

@property (assign, nonatomic) NSInteger countHeads;
@property (assign, nonatomic) NSInteger countHands;
@property (assign, nonatomic) NSInteger countAss;
@property (assign, nonatomic) NSInteger countLegs;

- (void) report;

@end

NS_ASSUME_NONNULL_END

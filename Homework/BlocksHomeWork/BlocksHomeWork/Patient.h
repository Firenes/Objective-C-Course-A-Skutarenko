//
//  Patient.h
//  BlocksHomeWork
//
//  Created by Nikita Shumilin on 19/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

NS_ASSUME_NONNULL_BEGIN

@class Patient;

typedef void (^PatientBlock)(void);

@interface Patient : NSObject

@property (strong, nonatomic) NSString *firstName;
@property (assign, nonatomic) CGFloat temperature;
@property (copy, nonatomic) PatientBlock patientBlock;

- (void) takePill;
- (void) makeShot;
- (void) feelsWorse;

@end

NS_ASSUME_NONNULL_END

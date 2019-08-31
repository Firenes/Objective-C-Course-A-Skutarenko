//
//  Doctor.h
//  DelegatesTest
//
//  Created by Nikita Shumilin on 11/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

NS_ASSUME_NONNULL_BEGIN

@protocol PatientDelegate;

@interface Doctor : NSObject <PatientDelegate>

@end

NS_ASSUME_NONNULL_END

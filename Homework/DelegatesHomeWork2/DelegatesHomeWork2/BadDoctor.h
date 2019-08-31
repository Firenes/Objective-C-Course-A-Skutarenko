//
//  BadDoctor.h
//  DelegatesHomeWork2
//
//  Created by Nikita Shumilin on 12/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

NS_ASSUME_NONNULL_BEGIN

@interface BadDoctor : NSObject <PatientDelegate>

@property (strong, nonatomic) NSString *name;

@end

NS_ASSUME_NONNULL_END

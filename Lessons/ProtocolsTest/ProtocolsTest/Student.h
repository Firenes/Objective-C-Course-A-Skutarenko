//
//  Student.h
//  ProtocolsTest
//
//  Created by Nikita Shumilin on 05/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Patient.h"

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject <Patient>

@property (strong, nonatomic) NSString *universtyName;
@property (strong, nonatomic) NSString *name;

- (void) study;

@end

NS_ASSUME_NONNULL_END

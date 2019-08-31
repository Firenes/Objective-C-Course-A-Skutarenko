//
//  Developer.h
//  ProtocolsTest
//
//  Created by Nikita Shumilin on 05/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import "Patient.h"

NS_ASSUME_NONNULL_BEGIN

@interface Developer : NSObject <Patient>

@property (assign, nonatomic) CGFloat experience;
@property (strong, nonatomic) NSString *name;

- (void) work;

@end

NS_ASSUME_NONNULL_END

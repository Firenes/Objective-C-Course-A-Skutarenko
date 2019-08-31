//
//  Object.h
//  ArraysTest
//
//  Created by Nikita Shumilin on 23/07/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Object : NSObject

@property (strong, nonatomic) NSString *name;

- (void) action;

@end

NS_ASSUME_NONNULL_END

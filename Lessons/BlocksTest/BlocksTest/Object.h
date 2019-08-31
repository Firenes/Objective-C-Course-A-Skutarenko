//
//  Object.h
//  BlocksTest
//
//  Created by Nikita Shumilin on 18/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void (^ObjectBlock)(void);

@interface Object : NSObject

@property (strong, nonatomic) NSString *name;

- (void) testMethod:(ObjectBlock) block;

@end

NS_ASSUME_NONNULL_END

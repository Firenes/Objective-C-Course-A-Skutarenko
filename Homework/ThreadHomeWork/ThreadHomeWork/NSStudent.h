//
//  NSStudent.h
//  ThreadHomeWork
//
//  Created by Nikita Shumilin on 09.10.2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSStudent : NSObject

@property (strong, nonatomic) NSString *name;

+ (void) operationSharedInstance;

+ (dispatch_queue_t) dispatchSharedInstance;
- (void) guessAnswer: (NSUInteger) randomNumber rangeNumber: (NSUInteger) range block:(void (^)(NSString *, CGFloat)) result;

@end

NS_ASSUME_NONNULL_END

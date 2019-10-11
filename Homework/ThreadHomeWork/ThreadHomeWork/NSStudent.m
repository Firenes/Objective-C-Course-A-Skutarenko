//
//  NSStudent.m
//  ThreadHomeWork
//
//  Created by Nikita Shumilin on 09.10.2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "NSStudent.h"
#import <UIKit/UIKit.h>
#import <CoreGraphics/CoreGraphics.h>

@implementation NSStudent

+ (dispatch_queue_t) dispatchSharedInstance {
    static dispatch_once_t once;
    
    static dispatch_queue_t shared;
    
    dispatch_once(&once, ^{
        shared = dispatch_queue_create("com.nikshhu.dispatch.queue.student", DISPATCH_QUEUE_CONCURRENT);
    });
    
    return shared;
}

+ (void) operationSharedInstance {
    static NSOperationQueue *queue = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        queue = [[NSOperationQueue alloc] init];
    });
    
//    [queue addOperation:[NSBlockOperation blockOperationWithBlock:^{
//
//    }]];
    
}

//- (void) guessAnswer: (NSUInteger) randomNumber rangeNumber: (NSUInteger) range block:(void (^)(NSString *, CGFloat)) result {
//
//    dispatch_async([NSStudent dispatchSharedInstance], ^{
//
//        double startTime = CACurrentMediaTime();
//
//        NSLog(@"%@ started", self.name);
//
//        int random = 0;
//
//        while (random != randomNumber) {
//            random = arc4random() % range;
//
//            NSLog(@"%@ try to guess number %d for random %ld in range from 0 to %ld", self.name, random, randomNumber, range);
//        }
//
//        result(self.name, CACurrentMediaTime() - startTime);
//    });
//}

- (void) guessAnswer:(NSUInteger)randomNumber rangeNumber:(NSUInteger)range block:(void (^)(NSString * _Nonnull, CGFloat))result {
    static NSOperationQueue *queue = nil;
    static dispatch_once_t onceToken;
    
    double startTime = CACurrentMediaTime();
    __block int random = 0;
    
    dispatch_once(&onceToken, ^{
        queue = [[NSOperationQueue alloc] init];
    });
    
    [queue addOperation:[NSBlockOperation blockOperationWithBlock:^{

        NSLog(@"%@ started", self.name);


        while (random != randomNumber) {
            random = arc4random() % range;

            NSLog(@"%@ try to guess number %d for random %ld in range from 0 to %ld", self.name, random, randomNumber, range);
        }

        result(self.name, CACurrentMediaTime() - startTime);
    }]];
    
}

@end

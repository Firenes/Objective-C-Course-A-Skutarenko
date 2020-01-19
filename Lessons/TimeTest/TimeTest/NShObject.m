//
//  NShObject.m
//  TimeTest
//
//  Created by Nikita Shumilin on 19.01.2020.
//  Copyright © 2020 Nikita Shumilin. All rights reserved.
//

#import "NShObject.h"

@interface NShObject ()

@property (strong, nonatomic) NSTimer *timer;

@end

@implementation NShObject

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"NShObject is initialized");
        
        //__weak id weakSelf = self;
        
        NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerTest:) userInfo:nil repeats:YES];

        [timer setFireDate:[NSDate dateWithTimeIntervalSinceNow:5]];
        
        self.timer = timer;
    }
    return self;
}

- (void) timerTest: (NSTimer *) timer {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"HH:mm:ss:SSS"];
    NSLog(@"%@", [dateFormatter stringFromDate:[NSDate date]]);
    
    //[timer invalidate];
}

- (void)dealloc {
    [self.timer invalidate];
    NSLog(@"NShObject is deallocated");
}

@end

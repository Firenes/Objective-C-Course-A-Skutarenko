//
//  NotificationAppDelegate.m
//  NotificationsHomeWork
//
//  Created by Nikita Shumilin on 16/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "NotificationAppDelegate.h"

@implementation NotificationAppDelegate

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
        
        [nc addObserver:self
               selector:@selector(didFinishLaunchingChangedNotification:)
                   name:UIApplicationDidFinishLaunchingNotification
                 object:nil];
        
        [nc addObserver:self
               selector:@selector(applicationWillResignActiveChangedNotification:)
                   name:UIApplicationWillResignActiveNotification
                 object:nil];
        
        [nc addObserver:self
               selector:@selector(applicationDidEnterBackgroundChangedNotification:)
                   name:UIApplicationDidEnterBackgroundNotification
                 object:nil];
        
        [nc addObserver:self
               selector:@selector(applicationWillEnterForegroundChangedNotification:)
                   name:UIApplicationWillEnterForegroundNotification
                 object:nil];
        
        [nc addObserver:self
               selector:@selector(applicationDidBecomeActiveChangedNotification:)
                   name:UIApplicationDidBecomeActiveNotification
                 object:nil];
        
        [nc addObserver:self
               selector:@selector(applicationWillTerminateChangedNotification:)
                   name:UIApplicationWillTerminateNotification
                 object:nil];
    }
    return self;
}

- (void) didFinishLaunchingChangedNotification:(NSNotification *)notification {
    NSLog(@"didFinishLaunchingChangedNotification notificate!");
}

- (void) applicationWillResignActiveChangedNotification:(NSNotification *)notification {
    NSLog(@"applicationWillResignActiveChangedNotification notificate!");
}

- (void) applicationDidEnterBackgroundChangedNotification:(NSNotification *)notification {
    NSLog(@"applicationDidEnterBackgroundChangedNotification notificate!");
}

- (void) applicationWillEnterForegroundChangedNotification:(NSNotification *)notification {
    NSLog(@"applicationWillEnterForegroundChangedNotification notificate!");
}

- (void) applicationDidBecomeActiveChangedNotification:(NSNotification *)notification {
    NSLog(@"applicationDidBecomeActiveChangedNotification notificate!");
}

- (void) applicationWillTerminateChangedNotification:(NSNotification *)notification {
    NSLog(@"applicationWillTerminateChangedNotification notificate!");
}

- (void) dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end

//
//  AppDelegate.m
//  ThreadHomeWork
//
//  Created by Nikita Shumilin on 09.10.2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "AppDelegate.h"
#import "NSStudent.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSStudent *student1 = [[NSStudent alloc] init];
    student1.name = @"Student 1";
    
    NSStudent *student2 = [[NSStudent alloc] init];
    student2.name = @"Student 2";
    
    NSStudent *student3 = [[NSStudent alloc] init];
    student3.name = @"Student 3";
    
    NSStudent *student4 = [[NSStudent alloc] init];
    student4.name = @"Student 4";
    
    NSStudent *student5 = [[NSStudent alloc] init];
    student5.name = @"Student 5";
    
    [student1 guessAnswer:5 rangeNumber:20 block:^(NSString *name, CGFloat time){
        NSLog(@"%@ found that number", name);
        NSLog(@"%@ finished in %f sec", name, time);
    }];
    [student2 guessAnswer:20 rangeNumber:30 block:^(NSString *name, CGFloat time){
        NSLog(@"%@ found that number", name);
        NSLog(@"%@ finished in %f sec", name, time);
    }];
    [student3 guessAnswer:9 rangeNumber:100 block:^(NSString *name, CGFloat time){
        NSLog(@"%@ found that number", name);
        NSLog(@"%@ finished in %f sec", name, time);
    }];
    [student4 guessAnswer:19 rangeNumber:20 block:^(NSString *name, CGFloat time){
        NSLog(@"%@ found that number", name);
        NSLog(@"%@ finished in %f sec", name, time);
    }];
    [student5 guessAnswer:30 rangeNumber:80 block:^(NSString *name, CGFloat time){
        NSLog(@"%@ found that number", name);
        NSLog(@"%@ finished in %f sec", name, time);
    }];
    
    
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end

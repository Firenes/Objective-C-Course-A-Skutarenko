//
//  AppDelegate.m
//  BitsTest
//
//  Created by Nikita Shumilin on 12.01.2020.
//  Copyright © 2020 Nikita Shumilin. All rights reserved.
//

#import "AppDelegate.h"
#import "NSStudent.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    /*
    NSStudent *student = [[NSStudent alloc] init];
    
    student.studiesAnatomy = YES;
    student.studiesDevelopment = YES;
    student.studiesEngineering = YES;
    student.studiesMath = YES;
    student.studiesPsychology = NO;
    student.studiesArt = NO;
    student.studiesBiology = NO;
    
    NSLog(@"%@", student);
    */
    
    NSStudent *student = [[NSStudent alloc] init];
    
    student.subjectType = NSStudentSubjectTypeAnatomy | NSStudentSubjectTypeDevelopment
                        | NSStudentSubjectTypeEngineering | NSStudentSubjectTypeMath;
    
    NSLog(@"%@", student);
    
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

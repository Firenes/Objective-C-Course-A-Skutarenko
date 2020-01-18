//
//  AppDelegate.m
//  BitsHomeWork
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
    
    // Array with students
    NSMutableArray *studentArray = [[NSMutableArray alloc] init];
    
    for (int count = 1; count < 11; count++) {
        NSStudent *student = [[NSStudent alloc] init];
        
        // random number for subjects
        int32_t randomNumber = arc4random() % 255;
        
        student.studentNumber = count;
        student.subjectType = randomNumber;
        
        [studentArray addObject:student];
        
        NSLog(@"student = %@", student);
    }
    
    // Cancel biology for students
    for (NSStudent *student in studentArray) {
        if (student.subjectType & NSStudentSubjectTypeBiology) {
            student.subjectType = ~NSStudentSubjectTypeBiology;

            NSLog(@"Biology is cancelled for student %ld", student.studentNumber);
        }
    }
    
    // Students with technical subjects
    NSMutableArray *programmersStudents = [[NSMutableArray alloc] init];
    NSInteger programmerStudentCriteria = NSStudentSubjectTypeDevelopment;
    
    // Students with humanitarian subjects
    NSMutableArray *humanitarianStudents = [[NSMutableArray alloc] init];
    NSInteger humanitarianStudentCriteria = NSStudentSubjectTypeArt | NSStudentSubjectTypePsychology;
    
    for (NSStudent *student in studentArray) {
        if (student.subjectType & humanitarianStudentCriteria) {
            [humanitarianStudents addObject:student];
        }
        
        if (student.subjectType & programmerStudentCriteria) {
            [programmersStudents addObject:student];
        }
    }
    
    NSLog(@"Student programmers count: %lu", programmersStudents.count);
    
    for (NSStudent *programmer in programmersStudents) {
        NSLog(@"Student programmers %@", programmer);
    }
    
    // Convert random usigned number to bits
    NSUInteger randomNumber = arc4random();
    NSInteger mask = 1;
    NSMutableString *bitsString = [[NSMutableString alloc] init];
    
    for (int i = 0; i < sizeof(randomNumber) * 4; i++) {
        
        if (i && !(i % 4)) {
            [bitsString insertString:[NSString stringWithFormat:@" "] atIndex:0];
        }
        
        [bitsString insertString:[NSString stringWithFormat:@"%d", (randomNumber & mask) ? 1: 0] atIndex:0];
        
        mask = mask << 1;
    }
    
    NSLog(@"%ld = %@", randomNumber, bitsString);
    NSLog(@"size of %lu is %lu", (unsigned long)randomNumber, sizeof(randomNumber));
    
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

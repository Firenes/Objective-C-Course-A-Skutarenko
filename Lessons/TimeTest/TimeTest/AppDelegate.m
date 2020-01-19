//
//  AppDelegate.m
//  TimeTest
//
//  Created by Nikita Shumilin on 18.01.2020.
//  Copyright © 2020 Nikita Shumilin. All rights reserved.
//

#import "AppDelegate.h"
#import "NShObject.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    /*
    // Create date
    NSDate *date = [NSDate date];

    NSLog(@"%@", date);
    
    // Print date with addind secs
    NSLog(@"%@", [date dateByAddingTimeInterval:5000]);
    NSLog(@"%@", [date dateByAddingTimeInterval:-5000]);
    
    // Compare dates
    [date compare:[date dateByAddingTimeInterval:5000]];
    [date earlierDate:[date dateByAddingTimeInterval:5000]];
    
    // Date interval
//    NSDate *date2 = [NSDate dateWithTimeIntervalSince1970:5];
    NSDate *date2 = [NSDate dateWithTimeIntervalSinceReferenceDate:10];
    
    NSLog(@"%@", date2);
     */
    
    /*
    NSDate *date = [NSDate date];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    
    // Set deafults date styles
    [dateFormatter setDateStyle:NSDateFormatterShortStyle];
    NSLog(@"%@", [dateFormatter stringFromDate:date]);
    
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    NSLog(@"%@", [dateFormatter stringFromDate:date]);
    
    [dateFormatter setDateStyle:NSDateFormatterLongStyle];
    NSLog(@"%@", [dateFormatter stringFromDate:date]);
    
    [dateFormatter setDateStyle:NSDateFormatterFullStyle];
    NSLog(@"%@", [dateFormatter stringFromDate:date]);
    
    // Set custom date styles
//    [dateFormatter setDateFormat:@"yyyy M MM MMM MMMM MMMMM"];
//    [dateFormatter setDateFormat:@"yyyy/MM/dd EEE EEEE EEEEE"];
//    [dateFormatter setDateFormat:@"yyyy/MM/dd EEEE HH:mm:SSS W"];
    [dateFormatter setDateFormat:@"yyyy/MM/dd HH:mm"];
    NSLog(@"%@", [dateFormatter stringFromDate:date]);
    
    NSDate *date3 = [dateFormatter dateFromString:@"2020/12/14 21:21"];
    NSLog(@"%@", date3);
     */
    
    /*
    NSDate *date = [NSDate date];
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    // Return date components: year, month, day, hour, minute, second
    NSDateComponents *components = [calendar components:NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond fromDate:date];
    
    NSLog(@"%@", components);
     */
    
    /*
    // Find out how many days from date1 to date2
    NSDate *date1 = [NSDate date];
    NSDate *date2 = [NSDate dateWithTimeIntervalSinceNow:-1000000];
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    NSDateComponents *dateComponents =
    [calendar components:NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute
                fromDate:date2
                  toDate:date1
                 options:0];
    
    NSLog(@"%@", dateComponents);
    */
     
    // Make some action with time interval
    NShObject *object = [[NShObject alloc] init];
    
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

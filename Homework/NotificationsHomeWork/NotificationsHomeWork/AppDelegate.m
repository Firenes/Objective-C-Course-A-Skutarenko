//
//  AppDelegate.m
//  NotificationsHomeWork
//
//  Created by Nikita Shumilin on 15/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "AppDelegate.h"
#import "Government.h"
#import "Doctor.h"
#import "Businessman.h"
#import "Pensioner.h"
#import "NotificationAppDelegate.h"

@interface AppDelegate ()
@property (strong, nonatomic) Government *government;
@property (strong, nonatomic) Doctor *doctor;
@property (strong, nonatomic) Businessman *businesman;
@property (strong, nonatomic) Pensioner *pensioner;
@property (strong, nonatomic) NotificationAppDelegate* notificationAppDelegate;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.notificationAppDelegate = [[NotificationAppDelegate alloc] init];
    
    self.doctor = [[Doctor alloc] init];
    self.doctor.salary = self.government.salary;
    self.doctor.averagePrice = self.government.averagePrice;
    
    self.businesman = [[Businessman alloc] init];
    self.businesman.taxLevel = self.government.taxLevel;
    self.businesman.averagePrice = self.government.averagePrice;

    self.pensioner = [[Pensioner alloc] init];
    self.pensioner.pension = self.government.pension;
    self.pensioner.averagePrice = self.government.averagePrice;
    
    self.government = [[Government alloc] init];
    
    NSLog(@"Government want to change some things in the country");
    
    self.government.taxLevel = 5.5f;
    self.government.salary = 1010.f;
    self.government.pension = 550.f;
    self.government.averagePrice = 11.f;
    self.government.inflation = 1.f;
    NSLog(@"");
    
    NSLog(@"Government want to change some things in the country");
    
    self.government.taxLevel = 6.f;
    self.government.salary = 1000.f;
    self.government.pension = 600.f;
    self.government.averagePrice = 13.f;
    self.government.inflation = 3.f;
    NSLog(@"");

    NSLog(@"Government want to change some things in the country");
    
    self.government.taxLevel = 5.5f;
    self.government.salary = 1000.f;
    self.government.pension = 600.f;
    self.government.averagePrice = 12.f;
    self.government.inflation = 2.f;
    NSLog(@"");
    
    return YES;
}

- (void) dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

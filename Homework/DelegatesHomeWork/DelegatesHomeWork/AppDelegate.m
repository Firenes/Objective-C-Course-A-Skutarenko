//
//  AppDelegate.m
//  DelegatesHomeWork
//
//  Created by Nikita Shumilin on 11/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "AppDelegate.h"
#import "Patient.h"
#import "Doctor.h"
#import "PetDoctor.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    Patient *patient1 = [[Patient alloc] init];
    patient1.name = @"Nikita";
    patient1.temperature = 36.6f;
    
    Patient *patient2 = [[Patient alloc] init];
    patient2.name = @"Elena";
    patient2.temperature = 35.6f;
    
    Patient *patient3 = [[Patient alloc] init];
    patient3.name = @"Kirill";
    patient3.temperature = 39.5f;
    
    Patient *patient4 = [[Patient alloc] init];
    patient4.name = @"Leha";
    patient4.temperature = 38.3f;
    
    Patient *patient5 = [[Patient alloc] init];
    patient5.name = @"Vova";
    patient5.temperature = 40.3f;
    
    Patient *patient6 = [[Patient alloc] init];
    patient6.name = @"Anton";
    patient6.temperature = 36.6f;
    
    Doctor *doctor = [[Doctor alloc] init];
    PetDoctor *petDoctor = [[PetDoctor alloc] init];
    
    NSArray *patientsArray = [NSArray arrayWithObjects:patient1, patient2, patient3, patient4, patient5, patient6, nil];
    
    for (id sickPatient in patientsArray) {
        [sickPatient setDelegate:doctor];
        
        [sickPatient setIsDoctorGood: arc4random() % 2];
        
        NSLog(@"Patient %@", sickPatient);
        NSLog(@"This doctor is very %@", [sickPatient isDoctorGood] ? @"good!": @"bad!");
    }
    
    [doctor report];

    for (id sickPatient in patientsArray) {
        if (![sickPatient isDoctorGood]) {
            NSLog(@"This doctor is very bad. Patient decide to change doctor.");
            [sickPatient setDelegate:petDoctor];
            NSLog(@"Patient %@", sickPatient);
        } else {
            NSLog(@"This doctor really very good.");
        }
    }
    
    return YES;
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

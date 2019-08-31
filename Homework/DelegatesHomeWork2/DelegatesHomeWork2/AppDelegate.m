//
//  AppDelegate.m
//  DelegatesHomeWork2
//
//  Created by Nikita Shumilin on 12/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "AppDelegate.h"
#import "Patient.h"
#import "Doctor.h"
#import "BadDoctor.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    Patient *patient1 = [[Patient alloc] init];
    patient1.patientName = @"Nikita";
    patient1.temperature = 38.f;
    
    Patient *patient2 = [[Patient alloc] init];
    patient2.patientName = @"Roma";
    patient2.temperature = 40.f;
    
    Patient *patient3 = [[Patient alloc] init];
    patient3.patientName = @"Elena";
    patient3.temperature = 35.4f;
    
    Patient *patient4 = [[Patient alloc] init];
    patient4.patientName = @"Leha";
    patient4.temperature = 37.2f;
    
    Patient *patient5 = [[Patient alloc] init];
    patient5.patientName = @"Vova";
    patient5.temperature = 36.6f;
    
    Patient *patient6 = [[Patient alloc] init];
    patient6.patientName = @"Daria";
    patient6.temperature = 39.6f;
    
    
    Doctor *doctor1 = [[Doctor alloc] init];
    doctor1.name = @"Doctor 1";
    
    BadDoctor *badDoctor = [[BadDoctor alloc] init];
    badDoctor.name = @"Bad doctor";
    
    NSArray *patientsArray = [NSArray arrayWithObjects:patient1, patient2, patient3, patient4, patient5, patient6, nil];
    
    for (id sickPatient in patientsArray) {
        
        if (arc4random() % 2 == 0) {
            NSLog(@"Hello, %@", doctor1.name);
            [sickPatient setDelegate:doctor1];
        } else {
            NSLog(@"Hello, %@", badDoctor.name);
            [sickPatient setDelegate:badDoctor];
        }
        
        [sickPatient setIsGoodDoctor: arc4random() % 2];
        
        NSLog(@"%@", sickPatient);
        NSLog(@"This doctor is %@", [sickPatient isGoodDoctor] ? @"good": @"bad");
    }
    
    [doctor1 report];
    
    for (id sickPatient in patientsArray) {
        if (![sickPatient isGoodDoctor]) {
            if (arc4random() % 2 == 1) {
                NSLog(@"Hello, %@. My name is %@. I came to you from previous doctor", doctor1.name, [sickPatient patientName]);
                [sickPatient setDelegate:doctor1];
            } else {
                NSLog(@"Hello, %@. My name is %@. I came to you from previous doctor", badDoctor.name, [sickPatient patientName]);
                [sickPatient setDelegate:badDoctor];
            }
        } else {
            NSLog(@"You are a good doctor, %@ stay with you.", [sickPatient patientName]);
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

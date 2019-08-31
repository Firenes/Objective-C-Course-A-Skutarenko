//
//  AppDelegate.m
//  BlocksHomeWork
//
//  Created by Nikita Shumilin on 19/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "AppDelegate.h"
#import "Student.h"
#import "Patient.h"

typedef void (^BlockInMethod)(void);

@interface AppDelegate ()
@property (strong, nonatomic) NSArray *patients;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
//    NSString *(^blockDisplayString)(void) = ^{
//        return @"Vzlom Jopy Proshel Uspeshno";
//    };
//
//    NSString *string = blockDisplayString();
//    NSLog(@"%@", string);
//
//    NSString *(^blockStringWithStringParam)(NSString *) = ^(NSString *string){
//        return [NSString stringWithFormat:@"%@", string];
//    };
//
//    NSString *string2 = blockStringWithStringParam(@"Vzlom jopy x2");
//    NSLog(@"%@", string2);
//
//    [self methodWithBlock:^{
//        NSLog(@"Print block!");
//    }];
    
//    Student *student1 = [[Student alloc] init];
//    student1.firstName = @"Nikita";
//    student1.lastName = @"Shumilin";
//
//    Student *student2 = [[Student alloc] init];
//    student2.firstName = @"Vova";
//    student2.lastName = @"Vovanov";
//
//    Student *student3 = [[Student alloc] init];
//    student3.firstName = @"Lupa";
//    student3.lastName = @"Pupov";
//
//    Student *student4 = [[Student alloc] init];
//    student4.firstName = @"Elena";
//    student4.lastName = @"Lutskina";
//
//    Student *student5 = [[Student alloc] init];
//    student5.firstName = @"Andrey";
//    student5.lastName = @"Shumilin";
//
//    Student *student6 = [[Student alloc] init];
//    student6.firstName = @"Oleg";
//    student6.lastName = @"Mongol";
//
//    Student *student7 = [[Student alloc] init];
//    student7.firstName = @"Yuri";
//    student7.lastName = @"Khovansky";
//
//    Student *student8 = [[Student alloc] init];
//    student8.firstName = @"Ilya";
//    student8.lastName = @"Maddyson";
//
//    Student *student9 = [[Student alloc] init];
//    student9.firstName = @"Konch";
//    student9.lastName = @"Pyatisotkov";
//
//    Student *student10 = [[Student alloc] init];
//    student10.firstName = @"Igor";
//    student10.lastName = @"Nikolaev";
//
//    NSArray *arrayWithStudents = [NSArray arrayWithObjects:student1, student2, student3, student4, student5, student6, student7, student8, student9, student10, nil];
//
//    NSArray *sortedArrayWithStudents = [arrayWithStudents sortedArrayUsingComparator:^NSComparisonResult(Student *obj1, Student *obj2) {
//        if ([obj1 lastName] == [obj2 lastName]) {
//            return [[obj1 firstName] compare:[obj2 firstName]];
//        } else {
//            return [[obj1 lastName] compare:[obj2 lastName]];
//        }
//    }];
//
//    NSInteger count = 0;
//    for (Student *student in sortedArrayWithStudents) {
//
//        count += 1;
//        NSLog(@"Sturdent %2ld: %@ %@", count, student.firstName, student.lastName);
//    }
    
    Patient *patient1 = [[Patient alloc] init];
    patient1.firstName = @"Lupa";
    
    Patient *patient2 = [[Patient alloc] init];
    patient2.firstName = @"Pupa";
    
    _patients = [NSArray arrayWithObjects:patient1, patient2, nil];
    
    for (Patient *certainPatient in _patients) {
        [self copyObjectToBlock:certainPatient];
    }
    
    return YES;
}

- (void) copyObjectToBlock:(__weak Patient *) weakPatient {
    weakPatient.patientBlock = ^{
        if (weakPatient.temperature > 36.6f && weakPatient.temperature <= 38.f) {
            [weakPatient takePill];
        } else if (weakPatient.temperature > 38.f) {
            [weakPatient makeShot];
        }
    };
}

//- (void) methodWithBlock:(BlockInMethod) block {
//    block();
//}


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

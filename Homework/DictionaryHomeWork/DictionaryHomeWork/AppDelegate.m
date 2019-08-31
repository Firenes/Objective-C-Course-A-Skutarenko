//
//  AppDelegate.m
//  DictionaryHomeWork
//
//  Created by Nikita Shumilin on 08/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "AppDelegate.h"
#import "Student.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    Student *student1 = [[Student alloc] init];
    student1.firstName = @"Nikita";
    student1.lastName = @"Shumilin";
    student1.helloPhrase = @"Hey, yo!";
    
    Student *student2 = [[Student alloc] init];
    student2.firstName = @"Nikita";
    student2.lastName = @"Shishow";
    student2.helloPhrase = @"Yobnem?";
    
    Student *student3 = [[Student alloc] init];
    student3.firstName = @"Elena";
    student3.lastName = @"Lutskina";
    student3.helloPhrase = @"Vecher v hatu!";
    
    Student *student4 = [[Student alloc] init];
    student4.firstName = @"Anatoly";
    student4.lastName = @"Artamonov";
    student4.helloPhrase = @"Dengi mne plati, blyat!";
    
    Student *student5 = [[Student alloc] init];
    student5.firstName = @"Eji";
    student5.lastName = @"Sarmat";
    student5.helloPhrase = @"Opat' obosralsa";
    
    Student *student6 = [[Student alloc] init];
    student6.firstName = @"Vasiliy";
    student6.lastName = @"Zalupin";
    student6.helloPhrase = @"Hello there! I'm bashkir!";
//    Student *student7 = [[Student alloc] init];
//    Student *student8 = [[Student alloc] init];
//    Student *student9 = [[Student alloc] init];
//    Student *student10 = [[Student alloc] init];
//    Student *student11 = [[Student alloc] init];
//    Student *student12 = [[Student alloc] init];
//    Student *student13 = [[Student alloc] init];
//    Student *student14 = [[Student alloc] init];
//    Student *student15 = [[Student alloc] init];
    
    
    NSDictionary *listOfStudents = [NSDictionary dictionaryWithObjectsAndKeys:
                                    student1, [student1 studentID],
                                    student2, [student2 studentID],
                                    student3, [student3 studentID],
                                    student4, [student4 studentID],
                                    student5, [student5 studentID],
                                    student6, [student6 studentID],
                                    nil];
    
    NSLog(@"%@", listOfStudents);

    NSArray *keys = [listOfStudents allKeys];

    for (NSString* key in keys) {
        id value = [listOfStudents objectForKey:key];
        NSLog(@"key = %@, value = %@", key, value);
    }
    NSLog(@" ");

//    NSArray *sortedKeys = [keys sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
//        return [obj1 compare:obj2];
//    }];
//
//    NSInteger countNumber = 0;
//
//    for (Student *anyStudent in listOfStudents) {
//        id value = [listOfStudents objectForKey:[sortedKeys objectAtIndex:countNumber]];
//        NSLog(@"%@", value);
//        countNumber++;
//    }
    
    NSArray *sortedKeys = [keys sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
//        NSString *first = [listOfStudents objectForKey:obj1];
//        NSString *second = [listOfStudents objectForKey:obj2];
        return [obj1 compare:obj2];
    }];

//    NSLog(@"sorted Array: %@", sortedKeys);

    NSMutableDictionary *sortedListOfStudents = [NSMutableDictionary dictionary];
    int counter = 0;
    for (int countNumber = 0; countNumber < [listOfStudents count]; countNumber++) {
        NSString *value = [listOfStudents objectForKey:[sortedKeys objectAtIndex:counter]];
        NSString *theKey = [sortedKeys objectAtIndex:counter];
        [sortedListOfStudents setObject:value forKey:theKey];
        counter++;
    }
    NSLog(@"\n\nsorted dict: %@", sortedListOfStudents);

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

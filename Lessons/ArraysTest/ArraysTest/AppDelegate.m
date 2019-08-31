//
//  AppDelegate.m
//  ArraysTest
//
//  Created by Nikita Shumilin on 22/07/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "AppDelegate.h"
//#import "Object.h"
#import "ChildObject.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
//    NSArray *array = [[NSArray alloc] initWithObjects:@"String 1", @"String 2", @"String 3", nil];
    NSArray *array = [NSArray arrayWithObjects:@"String 1", @"String 2", @"String 3", nil];
//    NSArray *array = @[@"String 1", @"String 2", @"String 3"];
    
//    for (int i = 0; i < [array count]; i++) {
//        NSLog(@"%@", [array objectAtIndex:i]);
//        NSLog(@"i = %d", i);
//    }
    
    for (int i = (int)[array count] - 1; i >= 0; i--) {
        NSLog(@"%@", [array objectAtIndex:i]);
        NSLog(@"i = %d", i);
    }
    
//    for (NSString *string in array) {
//        NSLog(@"%@", string);
//        NSLog(@"index = %lu", (unsigned long)[array indexOfObject:string]);
//    }
    
//    NSArray * array = [[NSArray alloc] initWithObjects:@1, @2, @3, @4, @5, nil];
//
//    for (NSNumber *number in array) {
//        NSLog(@"%@", number);
//    }
    
    Object *object1 = [[Object alloc] init];
    Object *object2 = [[Object alloc] init];
    ChildObject *object3 = [[ChildObject alloc] init];
    
    object1.name = @"Object 1";
    [object2 setName:@"Object 2"];
    [object3 setName:@"Object 3"];
    
    object3.lastName = @"Last Name";
    
    NSArray *array1 = [NSArray arrayWithObjects:object1, object2, object3, nil];
    
    for (Object *obj in array1) {
        NSLog(@"name = %@", obj.name);
        [obj action];
        
        if ([obj isKindOfClass:[ChildObject class]]) {
            
            ChildObject *child = (ChildObject*) obj;
            
            NSLog(@"last name = %@", child.lastName);
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

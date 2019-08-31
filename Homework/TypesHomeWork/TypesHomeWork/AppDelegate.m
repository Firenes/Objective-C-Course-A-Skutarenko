//
//  AppDelegate.m
//  TypesHomeWork
//
//  Created by Nikita Shumilin on 02/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "AppDelegate.h"
#import "HomeClass.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
//    CGPoint point1 = CGPointMake(arc4random_uniform(10), arc4random_uniform(10));
//    CGPoint point2 = CGPointMake(arc4random_uniform(10), arc4random_uniform(10));
//    CGPoint point3 = CGPointMake(arc4random_uniform(10), arc4random_uniform(10));
//    CGPoint point4 = CGPointMake(arc4random_uniform(10), arc4random_uniform(10));
//    CGPoint point5 = CGPointMake(arc4random_uniform(10), arc4random_uniform(10));
//
//    NSInteger pointNumber = 1;
//
//    NSArray *array = [NSArray arrayWithObjects:
//                      [NSValue valueWithCGPoint:point1],
//                      [NSValue valueWithCGPoint:point2],
//                      [NSValue valueWithCGPoint:point3],
//                      [NSValue valueWithCGPoint:point4],
//                      [NSValue valueWithCGPoint:point5],
//                      nil];
//
//    for (NSValue *value in array) {
//        CGPoint point = [value CGPointValue];
//
//        if ((point.x > 4 && point.x < 7) && (point.y > 4 && point.y < 7)) {
//            NSLog(@"Point number %ld hit the target with coordinates %@", pointNumber, NSStringFromCGPoint(point));
//        } else {
//            NSLog(@"Sorry, your point %ld with coordinates %@ miss the area",pointNumber, NSStringFromCGPoint(point));
//        }
//
//        pointNumber += 1;
//    }
    
    HomeClass *homeClass = [[HomeClass alloc] init];
    
    CGRect rect = CGRectMake(4, 4, 3, 3);
    
    NSMutableArray *mutableArray = [[NSMutableArray alloc] init];
    
    NSString *shoot = [homeClass targetToString:CombatShoot];
    NSString *miss = [homeClass targetToString:CombatMiss];
    
    for (int i = 0; i < 11; i++) {
        // arc4random()%11 -- поиск числа от 0 до 10
        CGPoint point = CGPointMake(arc4random_uniform(10), arc4random_uniform(10));
        
        [mutableArray addObject:[NSValue valueWithCGPoint:point]];
        bool result = CGRectContainsPoint(rect, point);
        
        if (result) {
            NSLog(@"%@ Coordinates was %@", shoot, NSStringFromCGPoint(point));
//            NSLog(@"Target was hitted. Coordinates was %@", NSStringFromCGPoint(point));
        } else {
            NSLog(@"%@ Coordinates was %@", miss, NSStringFromCGPoint(point));
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

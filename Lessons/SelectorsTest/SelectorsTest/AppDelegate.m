//
//  AppDelegate.m
//  SelectorsTest
//
//  Created by Nikita Shumilin on 16/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "AppDelegate.h"
#import "Object.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    // it uses very seldom
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
    
    Object *object = [[Object alloc] init];
    
    SEL selector1 = @selector(testMethod);
    SEL selector2 = @selector(testMethod:);
    SEL selector3 = @selector(testMethod:parameter2:);
    
    [self performSelector:selector1];
    [object performSelector:selector1];
    NSString *secret = [object performSelector:@selector(superSecretMethod)];
    
    NSLog(@"Secret = %@", secret);
    [self performSelector:selector2 withObject:@"test string"];
    [self performSelector:selector3 withObject:@"test string1" withObject:@"test string2"];

    [self performSelector:selector1 withObject:nil afterDelay:5.f];
    
    [self performSelector:@selector(testMethodParameter1:) withObject:[NSNumber numberWithInteger:11]];
    
//    NSString *string = NSStringFromSelector(selector1);
//    SEL sel = NSSelectorFromString(string);
    
#pragma clang diagnostic pop
    
    return YES;
}

- (void) testMethod {
    NSLog(@"Test Method");
}

- (void) testMethod:(NSString *)string {
    NSLog(@"testMethod: %@", string);
}

- (void) testMethod:(NSString *)string parameter2:(NSString *)string2 {
    NSLog(@"testMethod: parameters %@, %@", string, string2);
}

- (void) testMethodParameter1:(NSInteger)intValue {
    NSLog(@"testMethodParameter1 = %ld", intValue);
}

//- (NSString *) testMethodParameter1:(NSInteger)intValue parameter2:(CGFloat)floatValue parameter3:(double)doubleValue {
//    NSLog(@"testMethodParameter1 = %ld", intValue);
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

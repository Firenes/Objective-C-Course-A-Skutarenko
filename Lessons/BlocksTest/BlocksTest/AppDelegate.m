//
//  AppDelegate.m
//  BlocksTest
//
//  Created by Nikita Shumilin on 18/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "AppDelegate.h"
#import "Object.h"

typedef void (^OurTestBlock)(void);
typedef NSString *(^OurTestBlock2)(NSInteger);

@interface AppDelegate ()

@property (copy, nonatomic) OurTestBlock testBlock;
@property (strong, nonatomic) NSString *name;

@end


@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

#pragma mark - Methods
    
//    [self testMethod];
//
//    [self testMethodWithParameters:@"TEST STRING" withValue:123];
//
//    NSString *result = [self testMethodWithReturnValueAndParameters:@"test method with param" withValue:1234];
//    NSLog(@"%@", result);
    
    
#pragma mark - Blocks
//    void (^testBlock)(void);
//
//    testBlock = ^{
//        NSLog(@"test block!");
//    };
//
//    testBlock();
//    testBlock();
//    testBlock();
//
//    void (^testBlockWithParameters)(NSString *, NSInteger) = ^(NSString *string, NSInteger intValue){
//        NSLog(@"testBlockWithParameters: %@ %ld", string, intValue);
//    };
//
//    testBlockWithParameters(@"test string block", 123);
//
//    NSString *(^testBlockWithReturnValueAndParameters)(NSString *, NSInteger) = ^(NSString *string, NSInteger intValue) {
//        return [NSString stringWithFormat:@"testBlockWithReturnValueAndParameters: %@ %ld", string, intValue];
//    };
//
//    NSString* result = testBlockWithReturnValueAndParameters(@"test string block with params", 1234);
//    NSLog(@"%@", result);

    
#pragma mark - Variables in blocks
//    __block NSString *testString = @"How it is possible?";
//    __block NSInteger i = 0;
//
//    void (^testBlock2)(void);
//
//    testBlock2 = ^{
//        NSLog(@"test block!");
////        NSLog(@"%@", testString);
//
//        i += 1;
////        NSLog(@"%ld", i);
//        testString = [NSString stringWithFormat:@"How it is possible? %ld", i];
//        NSLog(@"%@", testString);
//    };
//
//    testBlock2();
//    testBlock2();
//    testBlock2();
//    testBlock2();
//    testBlock2();
//    testBlock2();
    
    
#pragma mark - Array and Blocks
//    NSArray *array = nil;
//
//    NSComparisonResult (^bbb)(id, id) = ^(id obj1, id obj2){
//        return NSOrderedAscending;
//    };
//
//    array = [array sortedArrayUsingComparator:bbb];
    

#pragma mark - Block like parameter
//    void (^ccc)(void) = ^{
//        NSLog(@"Block");
//    };
//
//    [self testBlockMethod:ccc];
//
//  // the same
//    [self testBlockMethod:^{
//        NSLog(@"Block!");
//    }];
    
    
//    [self testBlockMethod:^{
//        NSLog(@"Block!");
//    }];
  
    
#pragma mark - Block like Type
//    OurTestBlock testBlock2 = ^{
//        NSLog(@"Block 2!");
//    };
//
//    [self testBlockMethod2:testBlock2];
//
//    OurTestBlock2 tb = ^(NSInteger intValue){
//        return [NSString stringWithFormat:@"%ld", intValue];
//    };
//
//    NSLog(@"%@", tb(5));
    
    
#pragma mark - Objects in Blocks
//    Object *object = [[Object alloc] init];
//    object.name = @"ObjectName";
//
//    __weak Object *weakObject = object;
//
////    OurTestBlock tb = ^{
////        NSLog(@"%@", object.name);
////    };
////
////    tb();
//
//    self.testBlock = ^{
//        NSLog(@"%@", weakObject.name);
//    };
//
//    self.testBlock();
  
    
#pragma mark - Self using in Blocks
//    self.name = @"Hello";
//
//    Object *object1 = [[Object alloc] init];
//    object1.name = @"Object1Name";
//
//    [object1 testMethod:^{
//        NSLog(@"%@", self.name);
//    }];
    
    self.name = @"Hello";
    
    Object *object1 = [[Object alloc] init];
    object1.name = @"Object1Name";
    
    return YES;
}

- (void)testMethod {
    NSLog(@"test method!");
}

- (void)testMethodWithParameters:(NSString *)string withValue:(NSInteger) intValue {
    NSLog(@"testMethodWithParameters: %@ %ld", string, intValue);
}

- (NSString *)testMethodWithReturnValueAndParameters:(NSString *)string withValue:(NSInteger) intValue {
    return [NSString stringWithFormat:@"testMethodWithReturnValueAndParameters: %@ %ld", string, intValue];
}

- (void) testBlockMethod:(void (^)(void)) testBlock {
    NSLog(@"testBlockMethod");
    
    testBlock();
    testBlock();
    testBlock();
    testBlock();
    testBlock();
}

- (void) testBlockMethod2:(OurTestBlock) testBlock {
    NSLog(@"testBlockMethod2");
    
    testBlock();
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

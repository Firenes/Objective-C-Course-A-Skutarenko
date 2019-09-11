//
//  AppDelegate.m
//  ThreadsTest
//
//  Created by Nikita Shumilin on 07/09/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (strong, nonatomic) NSMutableArray *array;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
//    [self performSelector:@selector(testThread) withObject:nil];
    
//    NSThread *thread = [[NSThread alloc] initWithTarget:self selector:@selector(testThread) object:nil];
//    [thread start];
    
//    NSLog(@"%s", [[NSThread currentThread] isMainThread] ? "YES" : "NO");

    
//    for (int i = 0; i < 10; i++) {
//        NSThread *thread = [[NSThread alloc] initWithTarget:self selector:@selector(testThread) object:nil];
//        thread.name = [NSString stringWithFormat:@"Thread %d", i + 1];
//        [thread start];
//    }
    
    
//    NSThread *thread1 = [[NSThread alloc] initWithTarget:self selector:@selector(addStringToArray:) object:@"X"];
//    thread1.name = @"Thread 1";
//    [thread1 start];
//
//    NSThread *thread2 = [[NSThread alloc] initWithTarget:self selector:@selector(addStringToArray:) object:@"0"];
//    thread2.name = @"Thread 2";
//    [thread2 start];
    
//    NSThread *thread1 = [[NSThread alloc] initWithTarget:self selector:@selector(addStringToArray:) object:@"X"];
//    NSThread *thread2 = [[NSThread alloc] initWithTarget:self selector:@selector(addStringToArray:) object:@"0"];
//    thread1.name = @"Thread 1";
//    thread2.name = @"Thread 2";
//    [thread1 start];
//    [thread2 start];
//    
//    self.array = [NSMutableArray array];
//
//    [self performSelector:@selector(printArray) withObject:nil afterDelay:3];
    
//    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
//    dispatch_async(queue, ^{
//        double startTime = CACurrentMediaTime();
//
//        NSLog(@"%@ started", [[NSThread currentThread] name]);
//
//        for (int i = 0; i < 20000000; i++) {
//        }
//
//        dispatch_async(dispatch_get_main_queue(), ^{
//            NSLog(@"%@ finished %f", [[NSThread currentThread] name], CACurrentMediaTime() - startTime);
//        });
//    });
    
    self.array = [NSMutableArray array];
    
    // Create custom queue
    dispatch_queue_t queue = dispatch_queue_create("com.nikshhu.testthreads.queue", DISPATCH_QUEUE_CONCURRENT);
    
    __weak id weakSelf = self;
    
    dispatch_async(queue, ^{
        [weakSelf addStringToArray:@"x"];
    });
    
    dispatch_async(queue, ^{
        [weakSelf addStringToArray:@"0"];
    });
    
//    dispatch_async(queue, ^{
//        dispatch_async(dispatch_get_main_queue(), ^{
//            // UI Refresh
//        });
//    });
    
    [self performSelector:@selector(printArray) withObject:nil afterDelay:3];
    
    NSOperation *operation;
    [operation cancel];
    
    return YES;
}

- (void) testThread {
    @autoreleasepool {
        double startTime = CACurrentMediaTime();
        
        NSLog(@"%@ started", [[NSThread currentThread] name]);
        
        for (int i = 0; i < 20000; i++) {
//            NSLog(@"%d", i);
        }
        
        NSLog(@"%@ finished %f", [[NSThread currentThread] name], CACurrentMediaTime() - startTime);
        
        //for UI update
//        [self performSelectorOnMainThread:<#(nonnull SEL)#> withObject:<#(nullable id)#> waitUntilDone:<#(BOOL)#>];
    }
}

- (void) addStringToArray:(NSString *)string {
    
    @autoreleasepool {
        
        double startTime = CACurrentMediaTime();
        
        NSLog(@"%@ started", [[NSThread currentThread] name]);
        
        @synchronized (self) {
            
            NSLog(@"%@ calculations started", [[NSThread currentThread] name]);
            
            for (int i= 0; i < 200000; i++) {
                [self.array addObject:string];
            }
            
            NSLog(@"%@ calculations ended", [[NSThread currentThread] name]);
        }
        
        NSLog(@"%@ finished %f", [[NSThread currentThread] name], CACurrentMediaTime() - startTime);
    }
    
}

- (void) printArray {
    NSLog(@"%@", self.array);
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

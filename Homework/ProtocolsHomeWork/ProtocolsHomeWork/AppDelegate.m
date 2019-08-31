//
//  AppDelegate.m
//  ProtocolsHomeWork
//
//  Created by Nikita Shumilin on 06/08/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "AppDelegate.h"

#import "Protocols/Jumpers.h"
#import "Protocols/Swimmers.h"
#import "Protocols/Runners.h"

#import "Humans/Human.h"
#import "Humans/Homeless.h"
#import "Humans/Runner.h"
#import "Humans/Swimmer.h"
#import "Humans/Jumper.h"
#import "Humans/Pioneer.h"

#import "Animals/Animals.h"
#import "Animals/Dog.h"
#import "Animals/Cheetah.h"
#import "Animals/Parrot.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // Human class
    
    Homeless *homeless = [[Homeless alloc] init];
    homeless.name = @"Vasya";
    homeless.weight = 66.6f;
    homeless.height = 174.3f;
    homeless.gender = GenderMale;
    
    Runner *runner = [[Runner alloc] init];
    runner.name = @"Marya";
    runner.weight = 55.6f;
    runner.height = 165.4f;
    runner.gender = GenderFemale;
    runner.maxSpeed = 79.3f;
    
    Swimmer *swimmer = [[Swimmer alloc] init];
    swimmer.name = @"Nikita";
    swimmer.weight = 79.1f;
    swimmer.height = 177.5f;
    swimmer.gender = GenderMale;
    swimmer.maxDistance = 100.0f;
    
    Jumper *jumper = [[Jumper alloc] init];
    jumper.name = @"Geoorgy";
    jumper.weight = 59.2f;
    jumper.height = 180.0f;
    jumper.gender = GenderMale;
    jumper.maxJump = 50.9f;
    
    Pioneer *pioneer = [[Pioneer alloc] init];
    pioneer.name = @"Elena";
    pioneer.weight = 56.7f;
    pioneer.height = 165.0f;
    pioneer.gender = GenderFemale;
    pioneer.maxJump = 100.0f;
    pioneer.maxDistance = 200.0f;
    pioneer.maxSpeed = 49.5f;
    
    // Animal class
    
    Dog *dog = [[Dog alloc] init];
    dog.animalClass = @"Mammal";
    dog.animalName = @"Mark";
    dog.isDomestic = TRUE;
    dog.howManyLegs = 4;
    dog.maxJump = 60.5f;
    dog.maxDistance = 300.0f;
    dog.maxSpeed = 60.3f;
    
    Cheetah *cheetah = [[Cheetah alloc] init];
    cheetah.animalClass = @"Mammal";
    cheetah.animalName = @"Cheetos";
    cheetah.isDomestic = FALSE;
    cheetah.howManyLegs = 4;
    cheetah.maxJump = 120.0f;
    cheetah.maxSpeed = 120.0f;
    
    Parrot *parrot = [[Parrot alloc] init];
    parrot.animalClass = @"Bird";
    parrot.animalName = @"Popka";
    parrot.isDomestic = TRUE;
    parrot.howManyLegs = 2;
    parrot.maxJump = 10.4f;
    
    NSArray *activeArray = [NSArray arrayWithObjects:homeless, dog, runner, cheetah, pioneer, parrot, jumper, swimmer, nil];
    
    for (id <Jumpers, Swimmers, Runners> activeGuys in activeArray) {
        if ([activeGuys conformsToProtocol:@protocol(Jumpers)]) {
            NSLog(@"%@", activeGuys);
            NSLog(@"Top jump is %f meters", activeGuys.maxJump);
            NSLog(@"What do you usually do to be the best in jumping? %@ %@", [activeGuys scatter], [activeGuys jump]);
            
            if ([activeGuys respondsToSelector:@selector(fly)]) {
                NSLog(@"What about flying? %@", [activeGuys fly]);
            }
            
        } if ([activeGuys conformsToProtocol:@protocol(Swimmers)]) {
            NSLog(@"%@", activeGuys);
            NSLog(@"Top distance you swim is %f", activeGuys.maxDistance);
            NSLog(@"What do you usually do to be the best in swimming? %@ %@", [activeGuys dive], [activeGuys swim]);
            
            if ([activeGuys respondsToSelector:@selector(doSomeBubbles)]) {
                NSLog(@"%@", [activeGuys doSomeBubbles]);
            }
            
        } if ([activeGuys conformsToProtocol:@protocol(Runners)]) {
            NSLog(@"%@", activeGuys);
            NSLog(@"Your top speed is %f", activeGuys.maxSpeed);
            NSLog(@"What do you usually do to be the best in running? %@ %@ %@", [activeGuys start], [activeGuys run], [activeGuys stop]);
            
            if ([activeGuys respondsToSelector:@selector(sendHello)]) {
                NSLog(@"%@", [activeGuys sendHello]);
            }
            
        } else {
            NSLog(@"Loafer!");
            NSLog(@"%@", [homeless doSomething]);
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

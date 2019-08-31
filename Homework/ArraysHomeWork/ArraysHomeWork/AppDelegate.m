//
//  AppDelegate.m
//  ArraysHomeWork
//
//  Created by Nikita Shumilin on 23/07/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import "AppDelegate.h"
#import "Human/Human.h"
#import "Human/Cyclist.h"
#import "Human/Runner.h"
#import "Human/Swimmer.h"
#import "Human/BasketballPlayer.h"

#import "Animals/Animals.h"
#import "Animals/Dog.h"
#import "Animals/Parrot.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // Human classes
    
    Cyclist *cyclist = [[Cyclist alloc] init];
    cyclist.name = @"Elena";
    cyclist.height = 165;
    cyclist.weight = 57.0f;
    cyclist.sex = SexFemale;
    
    Runner *runner = [[Runner alloc] init];
    runner.name = @"Volodya";
    runner.height = 170;
    runner.weight = 69.2f;
    runner.sex = SexMale;
    
    Swimmer *swimmer = [[Swimmer alloc] init];
    swimmer.name = @"Anatoly";
    swimmer.height = 189;
    swimmer.weight = 89.3f;
    swimmer.sex = SexMale;
    
    BasketballPlayer *basketballPlayer = [[BasketballPlayer alloc] init];
    basketballPlayer.name = @"Joseph";
    basketballPlayer.height = 195;
    basketballPlayer.weight = 88.8f;
    basketballPlayer.sex = SexMale;
    basketballPlayer.playingHand = @"right";
    basketballPlayer.speed = 40.0f;
    
    
    // Amimals class
    
    Dog *dog = [[Dog alloc] init];
    dog.animalClass = @"Mammal";
    dog.animalName = @"Bobik";
    dog.isDomestic = NO;
    dog.howManyLegs = 4;
    
    Parrot *parrot = [[Parrot alloc] init];
    parrot.animalClass = @"Aves";
    parrot.animalName = @"Popka";
    parrot.isDomestic = YES;
    parrot.howManyLegs = 2;
    
    
//    // Student -- Master levels
//
//    NSArray *humanArray = [NSArray arrayWithObjects: cyclist, runner, swimmer, basketballPlayer, dog, parrot, nil];
//
//    for (int countNumber = (int)[humanArray count] - 1; countNumber >= 0; countNumber--) {
//        Human *sportsmen = [humanArray objectAtIndex: countNumber];
//
//
//        if ([sportsmen isKindOfClass: [BasketballPlayer class]]) {
//            BasketballPlayer *basket = (BasketballPlayer*) sportsmen;
//
//            NSLog(@" ");
//            NSLog(@"Type: %@", [Human class]);
//            NSLog(@"%@. Playing hand is %@. Speed is %.2f.", sportsmen, basket.playingHand, basket.speed);
//
//            [basket superMove];
//            [basket move];
//
//            NSLog(@" ");
//        } else if ([sportsmen isKindOfClass: [Animals class]]) {
//
//            Animals *animals = (Animals*) sportsmen;
//
//            NSLog(@"Type: %@", [Animals class]);
//            NSLog(@"%@", animals);
//
//            [animals animalMove];
//        } else {
//            NSLog(@"Type: %@", [Human class]);
//            NSLog(@"%@", sportsmen);
//
//            [sportsmen move];
//        }
//    }
    
    
//    // Star level
//
//    NSArray *humanArray = [NSArray arrayWithObjects: cyclist, runner, swimmer, basketballPlayer, nil];
//    NSArray *animalArray = [NSArray arrayWithObjects: dog, parrot, nil];
//
//    int humanCount = (int)[humanArray count];
//    int animalCount = (int)[animalArray count];
//    int maxCount = (humanCount > animalCount ? humanCount : animalCount);
//
//    NSMutableArray *humanAnimalArray = [NSMutableArray array];
//    [humanAnimalArray addObjectsFromArray: humanArray];
//    [humanAnimalArray addObjectsFromArray: animalArray];
//
//    for (int elementCount = 0; elementCount < maxCount; ++elementCount) {
//        if (elementCount < humanCount) {
//            NSLog(@"%@ class. %@.", [Human class], [humanArray objectAtIndex:elementCount]);
//            }
//        if (elementCount < animalCount) {
//            NSLog(@"%@ class. %@", [Animals class], [animalArray objectAtIndex:elementCount]);
//        }
//    }
    
    
    // Superman level
    
    NSArray *humanArray = [NSArray arrayWithObjects: cyclist, runner, swimmer, basketballPlayer, nil];
    NSArray *animalArray = [NSArray arrayWithObjects: dog, parrot, nil];
    
    NSArray *humanAndAnimalArray = [humanArray arrayByAddingObjectsFromArray: animalArray];
    
    humanAndAnimalArray = [humanAndAnimalArray sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        if ([obj1 isKindOfClass:[Human class]] && [obj2 isKindOfClass: [Human class]]) {
            return [[(Human*) obj1 name] compare:[(Human*) obj2 name]];
        } else if ([obj1 isKindOfClass:[Animals class]] && [obj2 isKindOfClass:[Animals class]]) {
            return [[(Animals*) obj1 animalName] compare:[(Animals*) obj2 animalName]];
        } else if ([obj1 isKindOfClass:[Human class]]) {
            return NSOrderedAscending;
        } else {
            return NSOrderedDescending;
        }
    }];
    
    NSLog(@"%@", humanAndAnimalArray);
    
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

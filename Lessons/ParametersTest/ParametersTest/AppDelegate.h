//
//  AppDelegate.h
//  ParametersTest
//
//  Created by Nikita Shumilin on 17/07/2019.
//  Copyright © 2019 Nikita Shumilin. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Object;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (copy, nonatomic) Object* object;

@end


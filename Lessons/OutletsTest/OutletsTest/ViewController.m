//
//  ViewController.m
//  OutletsTest
//
//  Created by Nikita Shumilin on 22.02.2020.
//  Copyright © 2020 Nikita Shumilin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (CGFloat) randomFromZeroToOne {
    return (float)(arc4random() % 256) / 255;
}

- (UIColor *) randomColor {
    CGFloat red = [self randomFromZeroToOne];
    CGFloat green = [self randomFromZeroToOne];
    CGFloat blue = [self randomFromZeroToOne];
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:1.0f];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
//    self.testView.backgroundColor = [self randomColor];
    
    for (UIView *view in self.testViews) {
        view.backgroundColor = [self randomColor];
    }
}

@end

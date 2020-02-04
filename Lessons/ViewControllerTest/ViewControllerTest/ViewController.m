//
//  ViewController.m
//  ViewControllerTest
//
//  Created by Nikita Shumilin on 03.02.2020.
//  Copyright © 2020 Nikita Shumilin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - Loading

- (void)loadView {
    [super loadView];
    
    NSLog(@"loadView");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"viewDidLoad");

    self.view.backgroundColor = [UIColor blueColor];
    
    // return device
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        NSLog(@"iPhone");
    }
    
}

# pragma mark - Views

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    NSLog(@"viewWillAppear");
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    NSLog(@"viewWillLayoutSubviews");
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    NSLog(@"viewDidLayoutSubviews");
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    NSLog(@"viewDidAppear");
}

// If property you shouldn't override it
//- (BOOL)shouldAutorotate {
//    return YES;
//}
//
//- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
//    return UIInterfaceOrientationMaskAll; //| UIInterfaceOrientationMaskLandscapeRight;
//}

#pragma mark - Orientation
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id <UIViewControllerTransitionCoordinator>)coordinator {
    
    NSLog(@"viewWillTransitionToSize size: %@", NSStringFromCGSize(size));
//    NSLog(@"viewWillTransitionToSize, width: %f, height: %f", size.width, size.height);
    NSLog(@"viewWillTransitionToSize, from orientation %ld", [self preferredInterfaceOrientationForPresentation]);
//    NSLog(@"viewWillTransitionToSize, %ld", [self supportedInterfaceOrientations]);
    
//    [self shouldAutorotate];
//
//    [self supportedInterfaceOrientations];
//
    // Return previous interface orientation
//    [self preferredInterfaceOrientationForPresentation];
}
@end

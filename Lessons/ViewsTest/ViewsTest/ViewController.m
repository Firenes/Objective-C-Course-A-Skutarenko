//
//  ViewController.m
//  ViewsTest
//
//  Created by Nikita Shumilin on 09.02.2020.
//  Copyright © 2020 Nikita Shumilin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) UIView *testView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(100, 150, 200, 50)];
    view1.backgroundColor = [[UIColor blueColor] colorWithAlphaComponent:0.8];
    [self.view addSubview:view1];
    
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(80, 130, 50, 250)];
    view2.backgroundColor = [[UIColor redColor] colorWithAlphaComponent:0.8];
    view2.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight |
                             UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleBottomMargin;
    [self.view addSubview:view2];
    
    self.testView = view2;
    
    [self.view bringSubviewToFront:view1];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
//    NSLog(@"\nframe = %@\nbounds = %@", NSStringFromCGRect(self.testView.frame), NSStringFromCGRect(self.testView.bounds));
    
    NSLog(@"\nframe = %@\nbounds = %@", NSStringFromCGRect(self.view.frame), NSStringFromCGRect(self.view.bounds));
    
    CGPoint origin = CGPointZero;

    // Переводить пространство одной вьюхи в другую
    origin = [self.view convertPoint:origin toView:self.view.window];
    
    NSLog(@"origin = %@", NSStringFromCGPoint(origin));
    
    // For add view u should use bounds, not frame
//    CGRect rect = self.view.frame;
    CGRect rect = self.view.bounds;
    rect.origin.y = 0;
    rect.origin.x = CGRectGetWidth(rect) - 100;
    rect.size = CGSizeMake(100, 100);
    
    UIView *v = [[UIView alloc] initWithFrame:rect];
    v.backgroundColor = [[UIColor yellowColor] colorWithAlphaComponent:0.8];
    [self.view addSubview:v];
}

@end

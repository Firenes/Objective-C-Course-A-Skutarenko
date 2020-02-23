//
//  ViewController.m
//  OutletsHomeWork
//
//  Created by Nikita Shumilin on 23.02.2020.
//  Copyright © 2020 Nikita Shumilin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.chessdeskView.layer.borderColor = [UIColor blackColor].CGColor;
    self.chessdeskView.layer.borderWidth = 2;
}

- (CGFloat) randomFromZeroToOne {
    return (float)(arc4random() % 256) / 255;
}

- (UIColor *) randomColor {
    CGFloat red = [self randomFromZeroToOne];
    CGFloat green = [self randomFromZeroToOne];
    CGFloat blue = [self randomFromZeroToOne];
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:1.f];
}

- (void) setColorToViews: (NSArray *) views portrait: (UIColor *) portraitColor lanscape: (UIColor *) landscpeColor {
    for (UIView *view in views) {
        switch (UIDevice.currentDevice.orientation) {
            case UIDeviceOrientationPortrait:
                view.backgroundColor = portraitColor;
                break;
            default:
                view.backgroundColor = landscpeColor;
                break;
        }
    }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    UIColor *randomColorForWhite = [self randomColor];
    UIColor *randomColorForBlack = [self randomColor];
    
    UIColor *randomColorForYellowChecker = [self randomColor];
    UIColor *randomColorForBlueChecker = [self randomColor];
    
    [self setColorToViews:self.whiteViews portrait:[UIColor whiteColor] lanscape:randomColorForWhite];
    [self setColorToViews:self.blackViews portrait:[UIColor blackColor] lanscape:randomColorForBlack];
    
    [self setColorToViews:self.yellowCheckers portrait:[UIColor yellowColor] lanscape:randomColorForYellowChecker];
    [self setColorToViews:self.blueCheckers portrait:[UIColor blueColor] lanscape:randomColorForBlueChecker];
}

@end

//
//  ViewController.m
//  ViewsHomeWork
//
//  Created by Nikita Shumilin on 12.02.2020.
//  Copyright © 2020 Nikita Shumilin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) UIView *chessdesk;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.chessdesk = [self createChessdesk];
    
    self.chessdesk.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
    
    NSLog(@"size %@", NSStringFromCGSize(self.chessdesk.frame.size));
    [self createCells];
}

// Шахматная доска имеет размер 8х8

- (UIView *) createChessdesk {
    CGRect chessRect = CGRectMake(self.view.frame.origin.x,
                                  self.view.frame.size.height / 4,
                                  self.view.frame.size.width,
                                  self.view.frame.size.width);
    
    UIView *view = [[UIView alloc] initWithFrame:chessRect];
    
    view.layer.borderColor = [UIColor blackColor].CGColor;
    view.layer.borderWidth = 2.0f;
    [self.view addSubview:view];
    
    return view;
}

- (void) createCells {
    CGFloat superviewWidth = self.chessdesk.frame.size.width;
    CGFloat superviewHeight = self.chessdesk.frame.size.height;
    for (int w = 0; w < 8; w++) {
        for (int h = 0; h < 8; h++) {
            UIView *cellView = [[UIView alloc] initWithFrame:
                                CGRectMake((superviewWidth / 8) * w,
                                           (superviewHeight / 8) * h,
                                           superviewWidth / 8,
                                           superviewHeight / 8)];
            
//            cellView.tag = w + h;
            
            [self.chessdesk addSubview:cellView];
            
            if ((w + h) % 2) {
                cellView.backgroundColor = [UIColor blueColor];
                cellView.tag = 0;
                
                if (h < 3) {
                    [self createCheckers:cellView.frame with:[UIColor redColor] with: 3];
                }

                if (h > 4) {
                    [self createCheckers:cellView.frame with:[UIColor whiteColor] with: 4];
                }
                
            } else {
                cellView.backgroundColor = [UIColor yellowColor];
                cellView.tag = 1;
            }
        }
        
    }
}

- (void) createCheckers: (CGRect) cellRect with: (UIColor *) color with: (NSInteger) tag {
    CGSize size = CGSizeMake(cellRect.size.width / 1.5, cellRect.size.height / 1.5);
    CGPoint coordinates = CGPointMake((((cellRect.size.width - size.width) / 2) + cellRect.origin.x), (((cellRect.size.height - size.height) / 2) + cellRect.origin.y));
    
    CGRect rect = CGRectMake(coordinates.x, coordinates.y, size.width, size.height);
    UIView *view = [[UIView alloc] initWithFrame:rect];
    view.tag = tag;
    
    view.backgroundColor = color;
    [self.chessdesk addSubview:view];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    
    UIColor *randomColor1 = [UIColor colorWithRed:arc4random() % 256 / 255.0 green:arc4random() % 256 / 255.0 blue:arc4random() % 256 / 255.0 alpha:1.0];
    
    UIColor *randomColor2 = [UIColor colorWithRed:arc4random() % 256 / 255.0 green:arc4random() % 256 / 255.0 blue:arc4random() % 256 / 255.0 alpha:1.0];
    
    for (UIView *view in self.chessdesk.subviews) {
        
        if (view.tag == 0) {
            switch (UIDevice.currentDevice.orientation) {
                case UIDeviceOrientationPortrait:
                    view.backgroundColor = [UIColor blueColor];
                    break;
                    
                default:
                    view.backgroundColor = [UIColor blackColor];
                    break;
            }
        }
        
        if (view.tag == 3) {
            view.backgroundColor = randomColor1;
        }
        
        if (view.tag == 4) {
            view.backgroundColor = randomColor2;
        }
    }
}


@end

//
//  ViewController.m
//  AnimationsHomeWork
//
//  Created by Nikita Shumilin on 06.03.2020.
//  Copyright © 2020 Nikita Shumilin. All rights reserved.
//

#import "ViewController.h"

typedef enum {
    ViewControllerMotionDirectionClockwise,
    ViewControllerMotionDirectionCounterclockwise
} ViewControllerMotionDirection;

@interface ViewController ()

//@property (assign, nonatomic) ViewControllerMotionDirection motionDirection;

@property (weak, nonatomic) UIView *view1;
@property (weak, nonatomic) UIView *view2;
@property (weak, nonatomic) UIView *view3;
@property (weak, nonatomic) UIView *view4;

@property (strong, nonatomic) NSArray *viewCornerPointsArray;
@property (strong, nonatomic) NSArray *viewColorArray;
@property (assign, nonatomic) CGFloat viewHeight;

@property (weak, nonatomic) UIView *topLeftView;
@property (weak, nonatomic) UIView *topRightView;
@property (weak, nonatomic) UIView *bottomLeftView;
@property (weak, nonatomic) UIView *bottomRightView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.viewHeight = 50;
    
//    self.motionDirection = [self setDirection];
    
    self.view1 = [self createView:CGRectMake(0, 100, 100, 100) and:[UIColor yellowColor]];
    self.view2 = [self createView:CGRectMake(0, 250, 100, 100) and:[UIColor blueColor]];
    self.view3 = [self createView:CGRectMake(0, 400, 100, 100) and:[UIColor redColor]];
    self.view4 = [self createView:CGRectMake(0, 550, 100, 100) and:[UIColor greenColor]];
    
    self.topLeftView = [self createView:CGRectMake(0, 0, 50, 50) and:[UIColor grayColor]];
    self.topRightView = [self createView:CGRectMake(CGRectGetMaxX(self.view.frame) - self.viewHeight, 0, self.viewHeight, self.viewHeight) and:[UIColor purpleColor]];
    self.bottomLeftView = [self createView:CGRectMake(0, CGRectGetMaxY(self.view.frame) - self.viewHeight, self.viewHeight, self.viewHeight) and:[UIColor orangeColor]];
    self.bottomRightView = [self createView:CGRectMake(CGRectGetMaxX(self.view.frame) - self.viewHeight, CGRectGetMaxY(self.view.frame) - self.viewHeight, self.viewHeight, self.viewHeight) and:[UIColor magentaColor]];
    
    self.viewColorArray = [[NSArray alloc] initWithObjects:
                           [UIColor grayColor],
                           [UIColor blueColor],
                           [UIColor redColor],
                           [UIColor greenColor],
                           nil];
    
    self.viewCornerPointsArray = [[NSArray alloc] initWithObjects:
                                    [NSValue valueWithCGPoint:CGPointMake(CGRectGetMaxX(self.view.bounds) - self.viewHeight, CGRectGetMinY(self.view.bounds))], // top right
                                    [NSValue valueWithCGPoint:CGPointMake(CGRectGetMaxX(self.view.bounds) - self.viewHeight, CGRectGetMaxY(self.view.bounds) - self.viewHeight)], // bottom right
                                    [NSValue valueWithCGPoint:CGPointMake(CGRectGetMinX(self.view.bounds), CGRectGetMaxY(self.view.bounds) - self.viewHeight)], // bottom left
                                    [NSValue valueWithCGPoint:CGPointMake(CGRectGetMinX(self.view.bounds), CGRectGetMinY(self.view.bounds))], // top left
                                    nil];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [self horizontalMoveView:self.view1 with:UIViewAnimationOptionCurveEaseIn];
    [self horizontalMoveView:self.view2 with:UIViewAnimationOptionCurveEaseOut];
    [self horizontalMoveView:self.view3 with:UIViewAnimationOptionCurveEaseInOut];
    [self horizontalMoveView:self.view4 with:UIViewAnimationOptionCurveLinear];
    
    [self startAnimationView:self.topLeftView withPoint:self.viewCornerPointsArray startCorner:0 colorArray:self.viewColorArray];
    [self startAnimationView:self.topRightView withPoint:self.viewCornerPointsArray startCorner:1 colorArray:self.viewColorArray];
    [self startAnimationView:self.bottomLeftView withPoint:self.viewCornerPointsArray startCorner:3 colorArray:self.viewColorArray];
    [self startAnimationView:self.bottomRightView withPoint:self.viewCornerPointsArray startCorner:2 colorArray:self.viewColorArray];
}

- (UIView *) createView: (CGRect) frame and: (UIColor *) color {
    UIView *view = [[UIView alloc] initWithFrame:frame];
    view.backgroundColor = color;
    [self.view addSubview:view];
    return view;
}

- (UIColor *) randomColor {
    CGFloat r = (CGFloat)(arc4random() % 256) / 255.f;
    CGFloat g = (CGFloat)(arc4random() % 256) / 255.f;
    CGFloat b = (CGFloat)(arc4random() % 256) / 255.f;
    
    return [UIColor colorWithRed:r green:g blue:b alpha:1.f];
}

//- (ViewControllerMotionDirection) setDirection {
//    NSInteger random = arc4random() % 2;
//    return random ? ViewControllerMotionDirectionClockwise : ViewControllerMotionDirectionCounterclockwise;
//}

- (void) startAnimationView: (UIView *) view withPoint: (NSArray *) pointArray startCorner: (int) cornerIndex colorArray: (NSArray *) color {
    
    __block int cornerIndices = cornerIndex;
    
    [UIView animateWithDuration:2
                          delay:0
                        options:UIViewAnimationOptionCurveLinear
                     animations:^{
        view.frame = CGRectMake([[pointArray objectAtIndex:cornerIndices] CGPointValue].x, [[pointArray objectAtIndex:cornerIndices] CGPointValue].y, 50, 50);
        view.backgroundColor = [color objectAtIndex:cornerIndices];
    } completion:^(BOOL finished) {
        if (cornerIndices == 3) {
            cornerIndices = 0;
        } else {
            cornerIndices++;
        }
        
        [self startAnimationView:view withPoint:pointArray startCorner:cornerIndices colorArray:color];
    }];
}

- (void) horizontalMoveView: (UIView *) view with:(UIViewAnimationOptions) animation {
    [UIView animateWithDuration:5
                          delay:0
                        options:animation | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat
                     animations:^{
        view.center = CGPointMake(CGRectGetWidth(self.view.bounds) - CGRectGetWidth(view.frame) / 2, view.frame.origin.y + CGRectGetHeight(view.frame) / 2);
        view.backgroundColor = [self randomColor];
    }
                     completion:^(BOOL finished) {
        NSLog(@"Animation canceled");
    }];
}

- (void) moveCornerView: (UIView *) view {
    [UIView animateWithDuration:5
                          delay:0
                        options:UIViewAnimationOptionCurveLinear //| UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat
                     animations:^{
        view.center = CGPointMake(CGRectGetMaxX(self.view.frame) - CGRectGetWidth(view.frame) / 2, CGRectGetMinY(self.view.frame) + CGRectGetHeight(view.frame) / 2);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:5
                              delay:0
                            options:UIViewAnimationOptionCurveLinear
                         animations:^{
            view.center = CGPointMake(CGRectGetMaxX(self.view.frame) - CGRectGetWidth(view.frame) / 2, CGRectGetMaxY(self.view.frame) - CGRectGetHeight(view.frame) / 2);
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:5
                                  delay:0
                                options:UIViewAnimationOptionCurveLinear
                             animations:^{
                view.center = CGPointMake(CGRectGetMinX(self.view.frame) + CGRectGetWidth(view.frame) / 2, CGRectGetMaxY(self.view.frame) - CGRectGetHeight(view.frame) / 2);
            } completion:^(BOOL finished) {
                [UIView animateWithDuration:5
                                      delay:0
                                    options:UIViewAnimationOptionCurveLinear
                                 animations:^{
                    view.center = CGPointMake(CGRectGetMinX(self.view.frame) + CGRectGetWidth(view.frame) / 2, CGRectGetMinY(self.view.frame) + CGRectGetHeight(view.frame) / 2);
                } completion:^(BOOL finished) {
                    __weak UIView *innerView = view;
                    [self moveCornerView:innerView];
                }];
            }];
        }];
    }];
}


@end
